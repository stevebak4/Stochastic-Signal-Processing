
%setting the parameters
sigma_square = 0.5;
sigma = sqrt(sigma_square)
m = 2.5
step = 0.01; alpha = -2:0.01:8;

%setting the pdf of |h|^2
a = m/(sigma^2)

front = (m/(sigma_square))^m
up1 = 2^(-m);
up2 = exp((-alpha.*a)./2);
up3 = alpha.^(m-1);
down = gamma(m);

%calculating the pdf of |h|^2
f= front.*(up1.*up2.*up3)./down;

%sum of sqares
x = 0
for i = 1:(2*m)
    
   x = x +( (sigma).*sqrt(1/m).*randn(1,10^6)).^2  ;
  
end 


histogram = hist(x,alpha);
fsims = histogram/(step*sum(histogram));

###########
%Analytical expression plot
figure(1);
plot(alpha,f,'r-','LineWidth',2);
xlabel('\alpha'); ylabel('Analytical Probability Density Function, |h|^2');
axis([min(alpha) max(alpha) 0 1]);

#print("-color","-deps" ,"Analytical_|h|^2.eps"); 
###########

%randn plot
figure(2);
plot(alpha,fsims,'b*'); grid on; hold on;
xlabel('\alpha'); ylabel('Simulation Probability Density Function, |h|^2');
axis([min(alpha) max(alpha) 0 1]);
#print("-color","-deps" ,"Simulation_|h|^2.eps"); 


##############
%analytical and empirical plot

figure(3);
plot(alpha,fsims,'b*'); grid on; hold on;
plot(alpha,f,'r-','LineWidth',2);
legend('Simulations', 'Analytical', 'Location','NorthEast')
xlabel('\alpha'); ylabel('Probability Density Function, |h|^2');
axis([min(alpha) max(alpha) 0 1]);
#print("-color","-deps" ,"Analytical_and_Simulation_|h|^2.eps"); 



#############