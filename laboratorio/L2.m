IS = 1E-12;
VT = 26e-3;

R = 100;

CH1 = dlmread("DS0001C.CSV", ",", 25, 0);
CH2 = dlmread("DS0001B.CSV", ",", 25, 0);

T = CH1(:,1);
X = CH1(:,2);
Y = CH2(:,2)./R;
close all;
plot(T, X, ";X;");
hold on;
plot(T, Y, ";Y;");

figure;
plot(X, Y, ";X-Y;*");
hold on;

figure; hold on;
for n = 1:0.1:2
  plot(X(1:2000), IS*(e.^(X(1:2000)/n/VT)-1), [";n=",num2str(n),";o"])
endfor

grid on;
