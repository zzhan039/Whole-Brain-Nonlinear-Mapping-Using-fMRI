# Whole-Brain-Nonlinear-Mapping-using-FMRI

Please feel free to contact me via [email](mailto:zzhan039@ucr.edu) for any question related to the method.


## Overview
We propose a phase space embedding method on resting-state fMRI data and characterized their
phase space dynamics with the sum of edge lengths (SE) in the reconstructed
phase portrait. The effects of repetition time (TR), bandpass filtering and the
added noise power of BOLD signals on the optimal embedding parameters (em-
bedding time delay τ and embedding dimension m) were examined with exper-
imental or simulated fMRI data.The present method was applied to the autism spectrum disorder dataset from Autism Imaging Data Exchange I (ABIDE I) to demonstrate its capability in the characterization of abnormal brain dynamics. The resultant SE maps were statistically compared between patients and controls, and the significant differences in SE were fed into a support vector machine (SVM) for classification. A significant increase in SE in DMN and SN, as well as the visual network, was found in autistic patients. With the SE features of these regions, the SVM classifier achieved an accuracy of 74.55% in differentiating autistic patients from controls. These results suggest that phase space embedding and SE mapping are promising in characterizing the nonlinear dynamics of the BOLD signal and might be useful for brain biomarker discovery in clinical psychiatry.

## Dependencies

- nilearn=0.5.0
- Matlab 2018a
- SPM 12
- CRP toolbox
- Dynasim toolbox


