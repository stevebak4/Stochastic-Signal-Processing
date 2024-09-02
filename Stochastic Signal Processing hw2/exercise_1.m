

%contains x[n] = d[n] + u[n]  (1x300)
%and d[n] (1x300)


load ('1.mat');


num_samples = length(x)
n = 1:num_samples;

#input_signals
figure(1);
plot(n, d, 'b-', 'linewidth', 1); 
grid on; hold on; 
plot(n, x,  'r-', 'linewidth', 1); 
title("Input signals from 1.mat");
legend('d[n]', 'x[n] = d[n]+u[n]');
ylabel("Amplitute");
xlabel('numbar of samples');
#print("-color","-deps" ,"input_signals"); 


%[Rd + Ru ]w = rd but i cannot take Ru seperately
%so i will take [Rx ]w = rd

[r_d,d_lags] = xcorr(d);
[r_x,x_lags] = xcorr(x);


figure(2)
stem(d_lags,r_d);
title("rd");
ylabel("value rd(x)");
xlabel("lag");

figure(3)
stem(x_lags,r_x);
title("rx");
ylabel("value rx(x)");
xlabel("lag");



for p = [10, 40, 80]   

  [w,r_d2,Rx2] = wiener_1(x,d,r_x,r_d,p,num_samples);

endfor



