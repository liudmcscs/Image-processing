clear;
clc;
close all;
I=imread('HW2_einstein_orig.tif');
J = histeq(I);
imshow(J)
figure
imhist(I,64)
figure
imhist(J,64)
imwrite(J,'NO1-equalized.tif')
