clc; clear all
N=5000;
body_trafene=0;
hold on;
a=0; b=1;

for i=1:N
    x=a+(b-a)*rand;
    y=a+(b-a)*rand;
    
    if x^2+y^2<=1
        body_trafene=body_trafene+1;
        plot(x,y,'*r');
    else
        plot(x,y,'*g');
    end;
end;
cislo_pi = 4*body_trafene/N;
pi = cislo_pi;
