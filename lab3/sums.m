%N = 10^1 through 10^7

function [singleDifferences, doubleDifferences] = sums (n)

%set to zero, both single and double precision
aSing = single(0);
aDub = 0;
bSing = single(0);
bDub = 0;
cSing = single(0);
cDub = 0;
dSing = single(0);
dDub = 0;

%smallest to largest
for i=n:-1:1
        
    aSing = single(aSing + (1/i));
    aDub = aDub + (1/i);
    
    bSing = single(bSing + (1/i^2));
    bDub = bDub + (1/i^2);
    
    cSing = single(cSing + (1/i^3));
    cDub = cDub + (1/i^3);
    
    dSing = single(dSing + (((-1)^i)/i));
    dDub = dDub + (((-1)^i)/i);
   
end

aSingRev = single(0);
aDubRev = 0;
bSingRev = single(0);
bDubRev = 0;
cSingRev = single(0);
cDubRev = 0;
dSingRev = single(0);
dDubRev = 0;

%largest to smallest
for i=1:n
        
    aSingRev = single(aSingRev + (1/i));
    aDubRev = aDubRev + (1/i);
    
    bSingRev = single(bSingRev + (1/i^2));
    bDubRev = bDubRev + (1/i^2);
    
    cSingRev = single(cSingRev + (1/i^3));
    cDubRev = cDubRev + (1/i^3);
    
    dSingRev = single(dSingRev + (((-1)^i)/i));
    dDubRev = dDubRev + (((-1)^i)/i);
   
end

aSingDiff = single(abs(aSingRev - aSing));
aDubDiff = abs(aDubRev - aDub);

bSingDiff = single(abs(bSingRev - bSing));
bDubDiff = abs(bDubRev - bDub);

cSingDiff = single(abs(cSingRev - cSing));
cDubDiff = abs(cDubRev - cDub);

dSingDiff = single(abs(dSingRev - dSing));
dDubDiff = abs(dDubRev - dDub);


singleDifferences = [aSingDiff, bSingDiff, cSingDiff, dSingDiff];
doubleDifferences = [aDubDiff, bDubDiff, cDubDiff, dDubDiff];



