function [PROB bin_num]= prob(y,maxbins)

%% Computation for the probabolity distribution

preBin = 0;
isNotZeroBin = false;
iter = 0;
cBin = maxBins;
while preBin ~= cBin
    zeroDistribution = isZeroDistribution(y,cBin);
    iter = iter+1;
    if ~zeroDistribution % not zero distribution; increase bin
        if iter == 1 % if first iteration then accept user provided number of bins
            break
        end
        tmpBin = cBin;
        nonZeroBin = cBin;
        cBin = floor((zeroBin+nonZeroBin)/2);
        preBin = tmpBin; 
        isNotZeroBin = true;
    else        % zero distribution; reduce bin
        if ~isNotZeroBin    % if previous number of bins contains zero 
            preBin = cBin;    % distribution, then decreases by factor of 2 
            zeroBin = cBin;
            cBin = floor(cBin/2);
        else
            tmpBin = cBin;     % if previous number of bins does not contain zero
            zeroBin = cBin;    % distribution, then decreases by taking average 
            cBin = floor((zeroBin+nonZeroBin)/2);
            preBin = tmpBin;
        end        
    end       
end
bin_num = cBin;
PROB = rhist(y,bin_num);
%
%**************************************************************************
%% INTERNAL FUNCTION TO CHECK WHETHER A GIVEN NUMBER OF BINS CONTAINS ZERO
% DISTRIBUTION OF DATA IN ATLEAST ONE OF THE BINS.
function trueOrFalse = isZeroDistribution(y,nBins)

[nn x]=rhist(y,nBins);
clear x;
z = find(nn == 0);
if length(z)>0
    trueOrFalse = true;  % zero distribution of data
else
    trueOrFalse = false;
end
