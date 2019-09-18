# Autogenerated wrapper script for gdk-pixbuf_jll for i686-linux-musl
export libgdkpixbuf

using Glib_jll
using JpegTurbo_jll
using libpng_jll
using Libtiff_jll
using X11_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libgdkpixbuf`
const libgdkpixbuf_splitpath = ["lib", "libgdk_pixbuf-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgdkpixbuf_path = ""

# libgdkpixbuf-specific global declaration
# This will be filled out by __init__()
libgdkpixbuf_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgdkpixbuf = "libgdk_pixbuf-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Glib_jll.PATH_list, JpegTurbo_jll.PATH_list, libpng_jll.PATH_list, Libtiff_jll.PATH_list, X11_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Glib_jll.LIBPATH_list, JpegTurbo_jll.LIBPATH_list, libpng_jll.LIBPATH_list, Libtiff_jll.LIBPATH_list, X11_jll.LIBPATH_list,))

    global libgdkpixbuf_path = abspath(joinpath(artifact"gdk-pixbuf", libgdkpixbuf_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgdkpixbuf_handle = dlopen(libgdkpixbuf_path)
    push!(LIBPATH_list, dirname(libgdkpixbuf_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

