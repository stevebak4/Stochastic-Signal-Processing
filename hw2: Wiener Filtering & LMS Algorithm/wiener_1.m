
function [w,r_d,Rx] = wiener_1(x,d,r_x,r_d,p,num_samples);

  
 
  r_d = r_d(num_samples: num_samples + p - 1);
  Rx = toeplitz(r_x(num_samples: num_samples + p - 1));

  w = r_d / Rx;


  filtered = conv(x, w);
  filtered = filtered(1:num_samples);

  #show figure
  figure(p);

  plot(d, 'b-', 'linewidth', 1); 
  grid on; hold on;  
  plot(filtered, 'r-', 'linewidth', 1);
  title(sprintf("p = %d", p));
  legend("initial d[n]", "denoised d[n]' ");
  ylabel("Amplitude");
  xlabel("number of samples");
  str = sprintf("Wiener_p_=_%d",p)
  #print("-color","-deps" ,str); 
      
endfunction      
