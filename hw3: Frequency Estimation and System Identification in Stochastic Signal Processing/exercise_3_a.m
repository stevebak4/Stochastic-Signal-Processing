load 1.mat

figure(1)
plot(x);
title("Input signal");
#print("-color","-deps" ,"ex_3_a_input_signal"); 
#figure(4)
#periodogram(x)



[pxx,w] = periodogram(x);

pxx = mag2db(pxx);

figure(2)
freq = w/(2*pi);
plot(freq,pxx);
title("Periodogram");
xlabel("Frequency (units of pi)");
ylabel('Power Spectral Density (db)');
#print("-color","-deps" ,"ex_3_a_periodogram"); 


####### ARMA ############

[psd,w]=pyulear(x,30);



psd = mag2db(psd);



figure(3)
plot(w,psd); grid on;
title("AR method");
legend('AR(30)');
xlabel('Frequency (units of pi)');
ylabel('Power Spectral Density (db)');
#print("-color","-deps" ,"ex_3_a_AR(30)"); 




#idx contains position in axes x (frequency) of max elements
#val contains the 3 max values of those frequencies
[val idx]=sort(pxx,'descend');
idx(1:3);
val(1:3);

k = 3;
k_perio_max = [];

for pos = idx(1:3);
  k_perio_max = [k_perio_max freq(pos)];
  
endfor  

k_perio_max  


##same for ARMA

[val idx]=sort(psd,'descend');
idx(1:3);
val(1:3);

k_ARMA_max = [];

for pos = idx(1:3);
  k_ARMA_max = [k_ARMA_max w(pos)];
  
endfor  

k_ARMA_max  
  
  
  
  
  
  
  
  

