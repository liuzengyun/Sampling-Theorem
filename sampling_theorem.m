# Sampling theorem using MATLAB code
% program to verifying sampling theorm (nyquist theorm fs>=2fm)
clc;
clear all;
t= -100:0.01:100;
fm=0.02   % fm = modulating frequency
x=cos(2*pi*t*fm); %take a signal and fm again a modulating frequency
subplot(2,2,1); 
plot(t,x)
xlabel('time in sec')
ylabel('x(t)') 
title('continous time signal')
fs1=0.02  % fs1 is first sampling frequency(in case fs1<2fm)
n=-2:2;
x1=cos(2*pi*fm*n/fs1) % because we have sample that interval -2:2
subplot(2,2,2);
stem(n,x1)     %we use stem for descrete signal
hold on  %hold on command use for hold the previous signal
subplot(2,2,2)
plot(n,x1,':') % : use for continous signal
xlabel('n')
ylabel('x(n)')
title('discrete time signal x(n)for fs<2fm')
fs2=0.04  % fs2 is second sampling frequency(in case fs2=2fm)
n1=-4:4;
x2=cos(2*pi*fm*n1/fs2) % because we have sample that interval -4:4
subplot(2,2,3);
stem(n1,x2)     %we use stem for descrete signal
hold on  %hold on command use for hold the previous signal
subplot(2,2,3)
plot(n1,x2,':') % : use for continous signal
xlabel('n1')
ylabel('x(n1)')
title('discrete time signal x(n1)for fs=2fm')
fs3=0.05  % fs3 is third sampling frequency(in case fs3>2fm)
n2=-100:100;
x3=cos(2*pi*fm*n2/fs3) % because we have sample that interval -50:50
subplot(2,2,4);
stem(n2,x3)     %we use stem for descrete signal
hold on  %hold on command use for hold the previous signal
subplot(2,2,4)
plot(n2,x3,':')  %  use for continous signal
xlabel('n2')
ylabel('x(n2)')
title('discrete time signal x(n2)for fs>2fm')
