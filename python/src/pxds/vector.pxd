from libcpp.string cimport string as libcpp_utf8_string

cdef extern from "vector/vector_types.h" namespace "keyvi::vector":
    cdef cppclass JsonVector:
        JsonVector(libcpp_utf8_string filename) except +
        libcpp_utf8_string Get(size_t index) # wrap-ignore
        size_t Size()
        libcpp_utf8_string Manifest()

cdef extern from "vector/vector_types.h" namespace "keyvi::vector":
    cdef cppclass StringVector:
        StringVector(libcpp_utf8_string filename) except +
        libcpp_utf8_string Get(size_t index)
        size_t Size()
        libcpp_utf8_string Manifest()
