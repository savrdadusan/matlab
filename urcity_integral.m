clc; clear all
N=5000;
body_trafene=0;
hold on;
a=0; b=1;
pom=(b-a)/N;
xx=a:pom:b;
yy=1./(1+xx);
maximum=max(yy);
for i=1:N
    x=a+(b-a)*rand;
    y=0+(maximum-0)*rand;
    if y<=1/(1+x)
        body_trafene=body_trafene+1;
        plot(x,y,'*r');
    else
        plot(x,y,'*g');
    end;
end;
plot(xx,yy,'-b');
integral=(body_trafene/N)*((b-a)*max(yy))
  log(2)
  integral-log(2)
