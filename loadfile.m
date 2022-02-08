% Looding fMRI nii image of a subject.
% You need to implement the Toolbox for NIfTI and ANALYZE image:https://www.mathworks.com/matlabcentral/fileexchange/8797-tools-for-nifti-and-analyze-image
function data = loadfile(dir)
clear;

%dirname = load("sub.mat"); A mat file storing the nii file of each
%subjects


dir1 = '\...\';
dir2 = str(dir);
dir3 = '\image.nii';
file_name = strcat(dir1,dir2, dir3);
mri_image = load_untouch_nii(file_name); %
image = mri_image.img;
data = double(image);
return data;
