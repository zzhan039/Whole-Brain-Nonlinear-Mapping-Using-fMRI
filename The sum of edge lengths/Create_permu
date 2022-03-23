
num_sbj = 50; % Replace the number with the number of subjects 
load('dir.mat'); % Loading the subject directory, the file contains a column named dir 
data = loadfile(dir(num_sbj));
Shape = size(data); % The size of the nii image
x0 = Shape(1);
y0 = Shape(2);
z0 = Shape(3);
target = zeros(61,73,61,num_sbj);
for w =1:num_sbj/2
temp = DD11(w,:);
cc=1;
for x = 1:x0
for y = 1:y0
for z = 1:z0

target(x,y,z,w)=temp(cc);

end
end
end
end

test =   load_untouch_nii('dir.nii');
nii = make_nii(target, [3 3 3], [30 43 25]); % Replace with your voxel size and image center
nii.hdr.hist = test.hdr.hist;
save_nii(nii, 'abide1_permutation.nii');% Save the SE results to a 4d image
