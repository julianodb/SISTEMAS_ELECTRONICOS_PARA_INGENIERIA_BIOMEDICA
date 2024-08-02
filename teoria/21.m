pkg load control

s = tf('s');

R1 = 10E3; R2=20E3; C1 = 10E-9; C2=C1; 

h = 2/(1+2*R1*C1*s+R1*R2*C1*C2*s*s)

t = 0:1e-6:2e-3;

step(h,t)

figure
hold on
grid on

[y, t] = lsim(h, cos(10_000*t), t);

plot(t,y,";w=10k;")

[y, t] = lsim(h, cos(100_000*t), t);

plot(t,y,"red;w=100k;")