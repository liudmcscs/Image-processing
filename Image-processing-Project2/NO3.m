clear;
clc;
close all;
A = imread('HW2_einstein_orig.tif');
Ref =imread('NO3Reforigin.pgm');
figure
imhist(Ref,64)
title('Reforigin')
Ref = imadjust(Ref,[ ],[ ],18);
imwrite(Ref,'NO3Ref.tif')
size(A)
size(Ref)
B = imhistmatch(A,Ref);
imwrite(B,'NO3histogramatching.tif')
figure
imhist(A,64)
title('A')
figure
imhist(Ref,64)
title('Ref')
figure
imhist(B,64)
title('B')