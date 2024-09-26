function w = find_w(u,p,y,m);  
  
    w = zeros(300,p);    %this is transpose(w)
   
    
    for n = 1: length(u) - 1;
        
        x = zeros(1, p);                 
        if p > n
            x(1: n) = u(n: -1: 1);
        else
            x = u(n: -1: n - p + 1);
        end
         
        x = transpose(x);  #current input
         
        
        wn = w(n,:);  #take w[n]
        dn = y(n);   #take clean output y[n] 
        e = (dn - wn*x );  # wn*x = filter output
        e = conj(e);   #e = e*
        op2 = m * e * (x);  
        w(n + 1,: ) = wn + transpose(op2);   #calculate w[n+1]
       
      endfor 
        
endfunction        