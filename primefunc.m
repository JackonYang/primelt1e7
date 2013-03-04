function mzone=primefunc(mlow,mhigh,mref)
%求两数之间的素数,返回素数个数n
%global m;
mzone=mlow:2:mhigh;
for j=mref
   mzone(find(~mod(mzone,j)))=[];
end
%m=[m,mzone];