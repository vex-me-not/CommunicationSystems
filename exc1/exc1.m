clear;
clc;

t = (0:0.01:10);     % to dianisma toy xronoy
x = @(t)(t>=0 & t<2).*t + (t>=2 & t<4).*((6-4*t).^(-1)) + 0; % anonymous function poy perigrafei to sima

t1= 1 .* t;          
t2= 2 .* t;
t3= 0.5 .* t;

x1= x(t1);          % to x(t)
x2= x(t2);          % to x(2t)
x3= x(t3);          % to x(t/2)

% kanontas comment tis subplot toy kodika kai uncomment tis figure emfanizetai kathe grafiki
% parastasi xorista. Gia syntomia stin ektyposi protimisa na kratiso tin
% subplot. Parola ayta toso to graphima kathe parastasis xorista oso kai to
% graphima poy periexei kai tis 3 parastaseis mazi vriskontai ston fakelo
% report/exc1.

subplot(1,3,1);     
%figure();         
plot(t,x1);
ylabel('x(t)');
xlabel('t');
title('x(t)');
grid on;

subplot(1,3,2);
%figure();
plot(t,x2);
ylabel('x(2t)');
xlabel('t');
title('x(2t)');
grid on;

subplot(1,3,3);
%figure();
plot(t,x3);
ylabel('x(t/2)');
xlabel('t');
title('x(t/2)');
grid on;

