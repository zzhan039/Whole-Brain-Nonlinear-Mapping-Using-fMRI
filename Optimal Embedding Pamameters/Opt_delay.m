clear;

load('dir.mat'); % Loading the subject directory, the file contains a column named dir 
num_sbj = 50; % Replace the number with the number of subjects 
store = [];
tau0 = 3 % Replacing the tau0 with the optimal embedding delay

for count0 = 1:num_sbj
    
    data = loadfile(dir(num_sbj));
    
    Shape = size(data); % The size of the nii image
    x0 = Shape(1);
    y0 = Shape(2)
    z0 = Shape(3)
%% Running fale nearset neighbour algorithm.
    for x = 1:x0
    for y = 1:y0
    for z = 1:z0
        q0 = data(x,y,z,:);
        q1 = no_bins(q0);
 %% Skipping voxels with no values. 
            b = no_bins(q2);
            if isnan(b)
                continue;
            end
            
%% Storing the optimal embedding time delay using mutual informatin first minimum
              
            [tmp, ~] = AMT_IF(q2,b,200);
            [~,~,~,mutual] = extrema(tmp);
            mutual = sort(mutual);
            store = [store mutual(1)];
               
    end
    end
    end
                
end

%% Using bar plots to find the highest bar-- the optimal tau value.
figure
[a,b]=hist(store(:),1:50);
bar(b,a,'k');
hTitle = title('Embedding Delay found by Mutual Information First Minimum');
xLab = xlabel('\tau');
yLab = ylabel('Count');
xlim([1 20]);

set( gca                       , ...
        'FontName'   , 'Arial',...
        'FontSize'   , 14, ...
        'FontWeight' , 'bold',...
        'Box'         , 'off'     , ...
        'TickDir'     , 'out'     , ...
        'LineWidth'   , 1         );
