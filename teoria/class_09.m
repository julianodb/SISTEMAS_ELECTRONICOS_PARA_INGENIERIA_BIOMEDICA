clear all;
close all;

R = 10E3;
C = 10E-9;

pkg load control;

s = tf('s');

for A = [1 2 3 5];

sys = A/(1+(4-A)*R*C*s+2*R*R*C*C*s*s)
figure;
bode(sys)
title(["A=" num2str(A)])

figure;
step(sys)
title(["A=" num2str(A)])

endfor

## g = -R*C*s/(1+4*R*C*s + 2*R*R*C*C*s*s)

## rlocusx(g,1,0,10);
