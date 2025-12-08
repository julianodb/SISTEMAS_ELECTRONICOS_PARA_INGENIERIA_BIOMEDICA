pkg load control

s = tf('s');

R=100e3;
C=1e-6;

omega = 10;

max_t = 7/min(omega/2/pi,1/R/C);

t = 0:RC/1000:max_t;

vi = 2*cos(omega*t);

H = 1/(R*C*s+1)

[y, t] = lsim(H, vi, t);

plot(t,y,";vo;")
