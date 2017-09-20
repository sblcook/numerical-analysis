%N = 10^1 through 10^7

function [aSing, aDub, bSing, bDub, cSing, cDub, dSing, dDub] = sums (n)

aSing = single(0);
aDub = 0;
bSing = single(0);
bDub = 0;
cSing = single(0);
cDub = 0;
dSing = single(0);
dDub = 0;

for i=n:-1:1
        
    aSing = single(aSing + (1/i))
    aDub = aDub + (1/i);
    
    bSing = single(bSing + (1/i^2));
    bDub = bDub + (1/i^2);
    
    cSing = single(cSing + (1/i^3));
    cDub = cDub + (1/i^3);
    
%     dSing = single(dSing + (((-1)^i)/i));
%     dDub = dDub + (((-1)^i)/i);
    
end

aSing
aDub
bSing 
bDub 
cSing 
cDub
dSing
dDub