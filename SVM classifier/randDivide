function [idxo prtA]=randDivide(total, num_of_folds) % Devide the sample to k folds randomly.
[n,m]=size(total);
np=(n-rem(n,num_of_folds))/num_of_folds;
B=total;
[c,idx]=sort(rand(n,1));
C=total(idx,:);
i=1;
j=1;
ptrA={};
idxo={};
n-mod(n,num_of_folds)
while i<n-mod(n,num_of_folds)
    prtA{j}=C(i:i+np-1,:);
    idxo{i}=idx(i:i+np-1,1);
    i=i+np;
    j=j+1;
end
prtA{j}=C(i:n,:);
end
