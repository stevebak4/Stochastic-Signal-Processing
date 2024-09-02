
#load u[n] and y[n]
load('2.mat');


# for every rank calculate w
for p = [2 3 4]
    
    
    m1 = 0.0001
    m2 = find_m_max(u,p)     #calculate max step value according to 0<m<(1/l_max)
    
    w1 = find_w(u,p,y,m1);   #find w1 coefficients for m1
    w2 = find_w(u,p,y,m2);   #find w1 coefficients for m2
    
    
    figure(p);
    grid on; hold on;
    title(sprintf("Adaptive Filtering via LMS with p = %d", p));
    lines = ['- ' ; '--'; ': '; '-.'];
    legend_type = [""];

  
    #plot w1 and w2 
    for k = 1: p 
        #w1
        lines(k)
        plot(w1(:, k),lines(k,1:2)) ; 
        str1 = sprintf("w_n[%d], μ = %.4f", k - 1,m1);
        #w2
        plot(w2(:, k),lines(k,1:2)); 
        str2 = sprintf("w_n[%d], μ = %.4f", k - 1,m2);
        legend_type = [legend_type ;str1 ; str2];
       
       
    end
    
  
    
    legend(legend_type(1: 2*p,1:19));
    legend('Location','southwest')
    xlabel('Iteration n');
    ylabel('LMS-Based FIR Filter Coefficients');
    
     #plot_name = sprintf("LMS_%d", p);
     #print("-color","-deps" ,plot_name);
end