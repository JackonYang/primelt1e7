function mzone=primefunc(mlow,mhigh,mref)
%������֮�������,������������n
%global m;
mzone=mlow:2:mhigh;
for j=mref
   mzone(find(~mod(mzone,j)))=[];
end
%m=[m,mzone];