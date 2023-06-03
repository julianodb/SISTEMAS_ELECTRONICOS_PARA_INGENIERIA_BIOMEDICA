pkg load signal
t = 0:0.0001:0.4;
ch1 = 2.5*square(t*15*2*pi) + 2.5;
sys = tf([1],[0.008 1]);
[ch2, _, _] = lsim(sys, ch1*0.3/5+0.001, t);
figure;
hold on;
plotyy(t, ch1*12/5, t, ch2)
grid on;