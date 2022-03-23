clear;

load('dir.mat'); % Loading the subject directory, the file contains a column named dir 
num_sbj = 50; % Replace the number with the number of subjects 
dimp = [];
tau0 = 3 % Replacing the tau0 with the optimal embedding delay

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
        q0 = data(x,y,z,:);
        q1 = no_bins(q0);
 %% Skipping voxels with no values.       
            if isnan(q1)
                continue;
            end
            
%% Storing the optimal embedding dimensions.
            y0 = fnn(double(q2),10,tau0);
            dimp =[dimp find(y0< 0.01,1,'first')];
               
    end
    end
    end
                
end

%% Using bar plots to find the highest bar-- the optimal m value.
figure
[a,b]=hist(dimp(:),1:20);
bar(b,a,'k');
hTitle = title('Embedding Demisin found by FNN');
xLab = xlabel('m');
yLab = ylabel('Count');
xlim([1 20]);

set( gca                       , ...
        'FontName'   , 'Arial',...
        'FontSize'   , 14, ...
        'FontWeight' , 'bold',...
        'Box'         , 'off'     , ...
        'TickDir'     , 'out'     , ...
        'LineWidth'   , 1         );
