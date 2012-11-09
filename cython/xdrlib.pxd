cdef extern from "xdrlib/include/xdrfile.h":
    ctypedef struct XDRFILE:
        pass
    ctypedef float matrix[3][3]
    ctypedef float rvec[3]
    ctypedef int mybool

    XDRFILE* xdrfile_open (char * path, char * mode)
    int xdrfile_close (XDRFILE * xfp)
    int read_xtc_natoms(char* fn, int* natoms)
    int read_xtc(XDRFILE *xd, int natoms, int *step, float *time, float* box, float *x, float *prec)
    #int natoms, int *step, float *time, matrix box, rvec *x, float *prec)