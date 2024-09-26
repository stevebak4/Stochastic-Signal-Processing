
#load u[n] and y[n]
load('2.mat');


# for every rank calculate w
for p = [4]
    
    
    m1 = 0.05
    m2 = find_m_max(x,p)     #calculate max step value according to 0<m<(1/l_max)
    
    w1 = find_w(x,p,y,m1);   #find w1 coefficients for m1
    w2 = find_w(x,p,y,m2);   #find w1 coefficients for m2
    
    
    figure(p);
    grid on; hold on;
    title(sprintf("Adaptive Filtering via LMS with p = %d", p));
    lines = ['- ' ; '--'; ': '; '-.'];
    legend_type = [""];

    coef1 = [];
    coef2 = [];

    #plot w1 and w2 
    for k = 1: p 
        #w1
        lines(k)
        plot(w1(:, k),lines(k,1:2)) ; 
        str1 = sprintf("w_n[%d],m1 = %.4f", k - 1,m1);
        #w2
        plot(w2(:, k),lines(k,1:2)); 
        str2 = sprintf("w_n[%d], m2 = %.4f", k - 1,m2);
        legend_type = [legend_type ;str1 ; str2];
        
        
        coef1 = [coef1 w1(length(x),k) ];
        coef2 = [coef2 w2(length(x),k) ];           
       
    end
    
    
    
    legend(legend_type(1: 2*p,1:19));
    legend('Location','eastoutside');
    xlabel('Iteration n');
    ylabel('LMS-Based FIR Filter Coefficients');
    plot_name = sprintf("LMS_%d", p);
    #print("-color","-deps" ,plot_name);

    
    
    
    [h,w] = freqz(coef1,1024);
    figure(30 +p)
    plot(w/pi,20*log10(abs(h)))
    str3 = sprintf("filter coefficients with step = %.4f", m1);
    title(str3);
    ylabel("decibel");
    xlabel('Frequency (units of pi)');
    #print("-color","-deps" ,"ex_3_b_m1_filter"); 

    
    [h,w] = freqz(coef2,1024);
    figure(31 +p)
    plot(w/pi,20*log10(abs(h)))
    str4 = sprintf("filter coefficients with step = %.4f", m2);
    title(str4);
    ylabel("decibel");
    xlabel('Frequency (units of pi)');
    #print("-color","-deps" ,"ex_3_b_m2_filter"); 

    
  
    
    
    
end