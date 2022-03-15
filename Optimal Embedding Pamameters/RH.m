function no = RH(y)
%RH   Relative Histogram.

if min(size(y))==1, y = y(:); end
[m,n] = size(y);
[nn,x]=hist(y,x); % frequency
nn = nn./m;     % relative frequency
no = nn;
 
end
