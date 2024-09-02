
%setting the parameters

sigma_square = 0.5;
sigma = sqrt(sigma_square)
m = 2.5
step = 0.01; alpha = 0:0.01:8;

a = m/(sigma^2)

%setting the pdf of |h|
front = (m/(sigma_square))^m

up1 = 2
up2 = exp((-(alpha.^2).*a)./2);
up3 = alpha.^(2*m-1);
down = gamma(m)*2^m;


%calculating the pdf of |h|

f= front.*(up1.*up2.*up3)./down;

%sum of sqares

x = 0
for i = 1:5
  
   x = x +( (sigma).*sqrt(1/m).*randn(1,10^6)).^2  ;

   end 

x =sqrt(x);

histogram = hist(x,alpha);
fsims = histogram/(step*sum(histogram));

%plot of analytical and empirical pdf of |h|
figure(4);
plot(alpha,fsims,'b*'); grid on; hold on;
plot(alpha,f,'r-','LineWidth',2);
legend('Simulations', 'Analytical', 'Location','NorthEast')
xlabel('\alpha'); ylabel('Probability Density Function, |h|');
axis([min(alpha) max(alpha) 0 1.5]);
#print("-color","-deps" ,"Analytical_and_Simulation_|h|.eps"); 


