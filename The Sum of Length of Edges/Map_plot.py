from nilearn import plotting
from nilearn import image
from nilearn import datasets
from nilearn.image import resample_to_img
import numpy as np
from nilearn.masking import compute_background_mask
from nilearn.plotting import plot_roi, show
from nilearn.image import get_data
from nilearn.image import new_img_like
import matplotlib.pyplot as plt

# Loading the standard MNI152 3mm image
first_volume = '../MNI152_T1_3mm_brain.nii'
# Loading the tstat map after FSL randomization
second_volume = '../tstate.nii'

T1 = image.load_img(first_volume)
img_mat = image.load_img(second_volume)

# Resamping the tstat nii map on the standard MNI 152 space
resampled_stat_img = resample_to_img(img_mat, T1)

#print(img_mat.shape)

plotting.plot_stat_map(T1,cut_coords=[0, 0, 0],threshold=5000)

# Ploting the whole brain t-stat map where SE showed signficant difference
plt.rcParams["font.weight"] = "bold"
plt.rcParams['font.size'] = '15'
display = plotting.plot_stat_map(resampled_stat_img, colorbar=False,cmap='YlOrRd',
                       cut_coords=[0, 0, 0])
display.title('ABIDE I t-stat map for HC < ASD', size=40,weight='bold')
display.annotate(size=40,weight='bold')
plotting.show()

# Ploting the whole brain t-stat map where SE showed signficant difference over z axis.
display1 = plotting.plot_stat_map(resampled_stat_img,  display_mode="z", cut_coords=(np.arange(-50,60,10)),title="ABIDE I t-stat map for HC < ASD iterated over z ",colorbar=False,cmap='YlOrRd')
display1.title('Axial view by slice number in (A)  ', size=27,weight='bold')
display1.annotate(size=30,weight='bold')
plotting.show()



