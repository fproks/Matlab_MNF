clc;
clear;
data=imread('Loukia.tif'); %��ȡ��άң��ͼ��
[m,n,l]=size(data);
data=reshape(data,m*n,l);
size(data)
tic;
[res,A]=mnf(double(data),m,n,88);  % 88Ϊ��Ҫ��ͼ���ά��
toc;
[a,b]=size(res);
[c,d]=size(A);
result=res*A;
size(result)
ans=reshape(result,m,n,88);  % ���

