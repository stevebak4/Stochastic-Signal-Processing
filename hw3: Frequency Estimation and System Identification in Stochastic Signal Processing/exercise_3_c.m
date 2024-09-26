



load ('3.mat');

#sound(y);


y = transpose(y);
u = transpose(u);

num_samples = length(y)
n = 1:num_samples;

#input_signals
figure(1);
plot(n, u, 'b-', 'linewidth', 1); 
grid on; hold on; 
plot(n, y,  'r-', 'linewidth', 1); 
title("Input signals from 1.mat");
legend('u[n]', 'y[n] = d[n]+u1[n]');
ylabel("Amplitute");
xlabel('numbar of samples');
#print("-color","-deps" ,"ex_3_c_input_signals"); 



[r_u2,u2_lags] = xcorr(u);
[r_yu2,yu2_lags] = xcorr(y,u);



figure(2)
stem(u2_lags,r_u2);
title("ru2");
ylabel("value ru2(x)");
xlabel("lag");

figure(3)
stem(yu2_lags,r_yu2);
title("ryu2");
ylabel("value ryu2(x)");
xlabel("lag");



for p = [40]   


  
 
  r_yu2_points = r_yu2(num_samples: num_samples + p - 1);
  Ru2 = toeplitz(r_u2(num_samples: num_samples + p - 1));
  
  w = r_yu2_points / Ru2;

  u1 = conv(u, w);
  
  u1 = u1(1:num_samples);

  filtered = y - u1;
  %amplify filtered sgignal
  filtered = filtered*5;
  
  #show figure
  figure(p);

  plot(y, 'b-', 'linewidth', 1); 
  grid on; hold on;  
  plot(filtered, 'r-', 'linewidth', 1);
  title(sprintf("p = %d", p));
  legend("initial y[n]", "denoised d[n]' ");
  ylabel("Amplitude");
  xlabel("number of samples");
  str = sprintf("Denoised signal with wiener p_=_%d",p)
  #print("-color","-deps" ,str); 
  

  
endfor


sound(filtered);
