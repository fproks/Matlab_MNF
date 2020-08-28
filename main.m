clc;
clear;
data=imread('Loukia.tif'); %读取高维遥感图像
[m,n,l]=size(data);
data=reshape(data,m*n,l);
size(data)
tic;
[res,A]=mnf(double(data),m,n,88);  % 88为想要的图像的维度
toc;
[a,b]=size(res);
[c,d]=size(A);
result=res*A;
size(result)
ans=reshape(result,m,n,88);  % 结果

