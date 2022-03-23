## You need to run" libsvmwrite('testfile', LABEL, sparse(normalize(DATA))); " in matlab to get the testfile, which is the SE of the related voxels.
from grid import *
 rate, param = find_parameters('../testfile', '-log2c -5,15,1 -log2g 3,-15,-1 -v 10')
