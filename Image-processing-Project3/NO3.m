clear;
clc;
I=imread('Fig0427(a)(woman).tif');
J = fft2(I);
J=fftshift(J);
[M N]=size(I); 
D0=80; 
x=0:N-1;
y=0:M-1;
[x y]=meshgrid(x,y);
cx=0.5*N;
cy=0.5*M;
lowpass=exp(-((x-cx).^2+(y-cy).^2)./(2*D0).^2);
J=J.*lowpass;
J1=ifftshift(J);
B1=ifft2(J1);
figure(1);imshow(abs(B1),[]);
title('low pass filtered image');


%begin zero padding
J = fft2(I);
J=fftshift(J);
[M N]=size(J); 
D0=80; 
x=0:N-1;
y=0:M-1;
[x y]=meshgrid(x,y);
cx=0.5*N;
cy=0.5*M;
lowpass=exp(-((x-cx).^2+(y-cy).^2)./(2*D0).^2);
JJ=[];
LO=[];
for i=1:M+N-1
    for k=1:M+N-1
    JJ(i,k) =0;
    LO(i,k) =0;
    end
end
JJ;
LO;
for i=1:512
    for k=1:512
   JJ(i,k)=J(i,k);
   LO(i,k)=lowpass(i,k);
    end
end
JJ=JJ.*LO;
JJ=ifftshift(JJ);
B11=ifft2(JJ);
figure(2);imshow(abs(B11),[]);
title('low pass filtered image with zero padding ');

