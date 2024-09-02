

function m_max = find_m_max(u,p);
  num_samples = length(u);  #find number of samples to use it for rx(0)

  [r_x,x_lags] = xcorr(u);
  disp(num_samples)
  #figure(30)
  #plot(r_x)
  l_max = (p+1)*r_x(num_samples)  #num_samples will be in lag = 0

  m_max = 2/l_max 
  
  
  #figure(p+10)
  #stem(x_lags,r_x);
endfunction