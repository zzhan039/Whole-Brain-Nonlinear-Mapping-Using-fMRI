function [acc1, sen1, spe1] = LIBSVM(DATA, LABEL)
acc = [];sen=[];spe=[];
train_data = DATA([11:20 21:100],:);
train_label = LABEL([11:20 21:100]);
test_data = DATA(1:10,:);
test_label = LABEL(1:10);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2'); % Replace the parameters (c and g) with your optimal values

[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];
train_data = DATA([1:10 21:100],:);
train_label = LABEL([1:10 21:100]);
test_data = DATA(11:20,:);
test_label = LABEL(11:20);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');

[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];
train_data = DATA([1:20 31:100],:);
train_label = LABEL([1:20 31:100]);
test_data = DATA(21:30,:);
test_label = LABEL(21:30);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];


train_data = DATA([1:30 41:100],:);
train_label = LABEL([1:30 41:100]);
test_data = DATA(31:40,:);
test_label = LABEL(31:40);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];


train_data = DATA([1:40 51:100],:);
train_label = LABEL([1:40 51:100]);
test_data = DATA(41:50,:);
test_label = LABEL(41:50);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];
train_data = DATA([1:50 61:100],:);
train_label = LABEL([1:50 61:100]);
test_data = DATA(51:60,:);
test_label = LABEL(51:60);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');

 
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];
train_data = DATA([1:60 71:100],:);
train_label = LABEL([1:60 71:100]);
test_data = DATA(61:70,:);
test_label = LABEL(61:70);
Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];


train_data = DATA([1:70 81:100],:);
train_label = LABEL([1:70 81:100]);
test_data = DATA(71:80,:);
test_label = LABEL(71:80);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];


train_data = DATA([1:80 91:100],:);
train_label = LABEL([1:80 91:100]);
test_data = DATA(81:90,:);
test_label = LABEL(81:90);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');
[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];


train_data = DATA([1:80 81:90],:);
train_label = LABEL([1:80 81:90]);
test_data = DATA(91:100,:);
test_label = LABEL(91:100);
 Model = svmtrain(train_label, train_data, '-c 16 g- 0.001953125 -t 2');

[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_label, test_data, Model);
stats = confusionmatStats(test_label,predict_label_L);
acc=[acc accuracy_L];sen = [sen stats.sensitivity(1,1)]; spe = [spe stats.specificity(1,1)];
acc1 = acc(1,:)/100;sen1 = sen(1,:);spe1 = spe(1,:);
end
