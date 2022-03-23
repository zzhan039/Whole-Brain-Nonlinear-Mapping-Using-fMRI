clear;

load('dir.mat'); % Loading the subject directory, the file contains a column named dir 
num_sbj = 50; % Replace the number with the number of subjects 
SE = []; % Storing SE
zero_l = 0; % Storing the voxel having NAN values.
tau0 = 3; % Replace the number with your optimal tau values;
m0 = 3;% Replace the number with your optimal m values;



for count0 = 1:num_sbj
    
    data = loadfile(dir(num_sbj));
    
    Shape = size(data); % The size of the nii image
    x0 = Shape(1);
    y0 = Shape(2);
    z0 = Shape(3);
%% Running fale nearset neighbour algorithm.
    for x = 1:x0
    for y = 1:y0
    for z = 1:z0
       
 %% Skipping voxels with no values.       
                if data(x,y,z)<1
                    zero_ll = zero_ll+1;
                    continue;
                end
            
%% Phase space embedding
            
                q0 = data(x,y,z,:);
                q1 = reshape(q0, 1, length(q0));
                Y = [q1(1:length(q1)-(m0-1)*tau0)' x1(1+m0:length(q1)-(m0-2)*tau0)' x1(1+2*m0:length(m0))'];  % The Y matrix has m0 columns    
        
        
  %% Calculating the sum of edge lengths
     [ Kc dc] = convhull(Y);
    
      yc = Y(Kc(:),:);
       d = 0;
       for k=1:size(yc,1)-1
            d = d + norm(yc(k+1,:)-yc(k,:));
       end
       SE = [SE d];                       
    end
    end
    end
                
end


