%调用 primefunc
%输入一个整数，赋值给n，计算小于n的所有素数，并输出素数的个数。

%算法概述：
%判断一个数是不是素数时，只遍历已有的素数。
%为了便于将循环写成矩阵的形式，分段处理。
%例如：
%判断17-200之间的素数时，只需遍历2-16之间素数剔除合数即可。
%判断200-10^4之间的素数，只需遍历2-200之间素数剔除合数即可。
clear
clc
global m;
n=input('输入一个整数 n(n>1)=');
%------n<2---------------------
while n<2 
    n=input('输入错误，请重新输入 n(n>1) =');
end
tic
%-------n<=16------------------
if n==2 disp('素数个数 1');
    return
elseif n==3||n==4 disp('素数个数 2');
    return
end
m=[2 3];
i=4;
while i<min(17,n+1)
    j=m;
    if ~sum(~mod(i,j))
        m(end+1)=i;    
    end
    i=i+1;
end
m15=m;
num=length(m15);
if n<17 
    fprintf('素数个数 %d\n',num);
    toc
    return
end
%-------------17~~200----------------------
m200=primefunc(17,min(200,n),m);
num=num+length(m200);
if n<=200
    fprintf('素数个数 %d\n',num);
    toc
    return;
end

%------------200~~1000---------------------
m3=primefunc(201,min(n,1000),[m15,m200]);
num=num+length(m3);
if n<=1000 
    fprintf('素数个数 %d\n',n)
    toc
    return;
end
%------------`10^3~~10^4-------------------
m4=primefunc(1001,min(n,10000),[m15,m200]);
num=num+length(m4);
if n<=10000
        fprintf('素数个数 %d\n',num)
        toc
    return;
end
%-------------10^4~~10^6-------------------
m56=primefunc(10001,min(n,1000000),[m15,m200,m3]);
num=num+length(m56);
if n<=10^6
        fprintf('素数个数 %d\n',num)
        toc
    return;
end
%-------------10^6~~10^7-------------------
m7=primefunc(10^6+1,min(n,10^7),[m15,m200,m3,m4(1:279)]);
num=num+length(m7);
if n<=10^7
        fprintf('素数个数 %d\n',num)
        toc
    return;
end
%------------------------------------------
toc
