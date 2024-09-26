
%setting the parameters
sigma_square = 0.5;
sigma = sqrt(sigma_square)
step = 0.01; alpha = 0:0.01:8;

m = 2.5
a = m/(sigma^2)

%setting the expression with m = 2.5
front = (m/(sigma_square))^m

up1 = 2
up2 = exp((-(alpha.^2).*a)./2);
up3 = alpha.^(2*m-1);
down = gamma(m)*2^m;

f= front.*(up1.*up2.*up3)./down;
####################################

%setting the expression with m = 1
m = 1
a = m/(sigma^2)
front = (m/(sigma_square))^m

up1 = 2
up2 = exp((-(alpha.^2).*a)./2);
up3 = alpha.^(2*m-1);
down = gamma(m)*2^m;

f2= front.*(up1.*up2.*up3)./down;

%plotting the two expressions 
###############################
figure(5);
plot(alpha,f2,'b'); grid on; hold on;
plot(alpha,f,'r-','LineWidth',2);
legend('m = 1', 'm = 2.5', 'Location','NorthEast')
xlabel('\alpha'); ylabel('Probability Density Function, |h|');
axis([min(alpha) max(alpha) 0 1.5]);
#print("-color","-deps" ,"different_m.eps"); 

