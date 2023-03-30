clear;
clc;
I=imread('Fig0427(a)(woman).tif');
J = fft2(I);
magnitude=abs(J);figure(1);imshow(magnitude,[]);figure(2);plot(magnitude);
phase=angle(J);figure(3);imshow(phase,[]);figure(4);plot(phase);