%���� primefunc
%����һ����������ֵ��n������С��n����������������������ĸ�����

%�㷨������
%�ж�һ�����ǲ�������ʱ��ֻ�������е�������
%Ϊ�˱��ڽ�ѭ��д�ɾ������ʽ���ֶδ���
%���磺
%�ж�17-200֮�������ʱ��ֻ�����2-16֮�������޳��������ɡ�
%�ж�200-10^4֮���������ֻ�����2-200֮�������޳��������ɡ�
clear
clc
global m;
n=input('����һ������ n(n>1)=');
%------n<2---------------------
while n<2 
    n=input('����������������� n(n>1) =');
end
tic
%-------n<=16------------------
if n==2 disp('�������� 1');
    return
elseif n==3||n==4 disp('�������� 2');
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
    fprintf('�������� %d\n',num);
    toc
    return
end
%-------------17~~200----------------------
m200=primefunc(17,min(200,n),m);
num=num+length(m200);
if n<=200
    fprintf('�������� %d\n',num);
    toc
    return;
end

%------------200~~1000---------------------
m3=primefunc(201,min(n,1000),[m15,m200]);
num=num+length(m3);
if n<=1000 
    fprintf('�������� %d\n',n)
    toc
    return;
end
%------------`10^3~~10^4-------------------
m4=primefunc(1001,min(n,10000),[m15,m200]);
num=num+length(m4);
if n<=10000
        fprintf('�������� %d\n',num)
        toc
    return;
end
%-------------10^4~~10^6-------------------
m56=primefunc(10001,min(n,1000000),[m15,m200,m3]);
num=num+length(m56);
if n<=10^6
        fprintf('�������� %d\n',num)
        toc
    return;
end
%-------------10^6~~10^7-------------------
m7=primefunc(10^6+1,min(n,10^7),[m15,m200,m3,m4(1:279)]);
num=num+length(m7);
if n<=10^7
        fprintf('�������� %d\n',num)
        toc
    return;
end
%------------------------------------------
toc
