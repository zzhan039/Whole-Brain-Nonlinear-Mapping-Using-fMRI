function NUMs = no_bins(y)
% Compute the optimal number of bins for mutual information

n = length(y);
m_r = max(y)-min(y);
NUMs = ceil(m_r)/(2*iqr(y)*n^(-1/3));
NUMs = round(NUMs);

end
