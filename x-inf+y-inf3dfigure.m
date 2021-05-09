clear;
clc;
h=linspace(-20,20,50);
c=linspace(-2*pi,2*pi,50);
[x,y]=meshgrid(h,c);
%二重积分的范围是x-无穷 y-无穷 里面是 dsdt的二重积分
fun = @(a, b)(1-(1-exp(-a)).*(1-exp(-b)))./(pi*pi*(1+a.^2).*(1+b.^2));
p = arrayfun(@(x,y)integral2(@(a,b)fun(a,b),x,inf,y,inf),x, y);
%fun=@(a,b,H,C)(cos(a).*cos(b)+sin(a).*sin(b)*cos(C))./((r2*cos(b)-r1*cos(a)).^2+(r2*sin(b)+t-r1*sin(a)*cos(C)).^2+(r1*sin(a)*sin(C)+H).^2).^0.5;
%p = arrayfun(@(H,C)integral2(@(a,b)fun(a,b,H,C),0,inf,0,inf),H,C);
%M=(u0*r1*r2*n1*n2/4*pi)*arrayfun(@(H,C)integral2(@(a,b)fun(a,b,H,C),0,2*pi,0,2*pi),H,C);
%P=((w*M*Us).^2).*RL./(R1*(R2+RL)+(w*M).^2).^2;
surf(x,y,p);
