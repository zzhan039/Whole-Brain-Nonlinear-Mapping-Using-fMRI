sub_num = 100; % Replace with your number of subjects.




for count1=1:100 % 100 randomizations for 10 fold cross valistion
%% Radomization
index = 1:100;
[idxo prtA]=randDivide(index',10);
 
tmp0=[];
for j = 1:10
tmp0 = [tmp0;prtA{1,j}];
end
for j = 1:num_sbj
  tmp2(j) = tmp(tmp0(j));
end
tmp=tmp2';
feature =[];


%% Select subjects randomly
for i=1:100
FEAq1(:,i) = DATA(:,tmp(i));
end

FEA1 = normalize(FEAq1);
%% Select lables accordingly

label1=[];label = [1*ones(50,1);-1*ones(50,1)];
for i=1:100
label1(i) = label(tmp(i));
end
label1=label1';


[acc1,sen1,spe1] = LIBSVM(FEA1,label1);

Performance=[Performance;acc1];

end
