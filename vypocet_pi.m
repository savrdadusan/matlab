clc; clear all
N=5000;
body_trafene=0;
hold on;
a=0; b=1;
%x=0.1;
%y=0;
%m=100;
%pom=(b-a)/N;
%xx=a:pom:b;
%yy=1./(1+xx);
%maximum=max(yy);
for i=1:N
    x=a+(b-a)*rand;
    y=a+(b-a)*rand;
    %x=mod(a*x+b,m)/100;
    %y=mod(a*x+b,m)/100;
    if x^2+y^2<=1
        body_trafene=body_trafene+1;
        plot(x,y,'*r');
    else
        plot(x,y,'*g');
    end;
end;
cislo_pi = 4*body_trafene/N;
pi = cislo_pi;
%plot(xx,yy,'-b');
%integral=(body_trafene/N)*((b-a)*max(yy))
  %log(2)
  %integral-log(2)
