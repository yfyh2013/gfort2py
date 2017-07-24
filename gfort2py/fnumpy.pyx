import numpy as np
cimport numpy as np

cdef extern from "numpy/ndarraytypes.h":
    void PyArray_CLEARFLAGS(np.ndarray arr, int flags)
    void PyArray_ENABLEFLAGS(np.ndarray arr, int flags)

def remove_ownership(np.ndarray arr):    
    PyArray_CLEARFLAGS(arr, np.NPY_OWNDATA)

def give_ownership(np.ndarray arr):    
    PyArray_ENABLEFLAGS(arr, np.NPY_OWNDATA)
