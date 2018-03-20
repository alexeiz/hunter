include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    caf
    VERSION
    0.15.7
    URL
    "https://github.com/alexeiz/actor-framework/archive/0.15.7-p1.tar.gz"
    SHA1
    33b597ecf2166768167bab98525feed6ae9458c9
)

hunter_cmake_args(
    caf
    CMAKE_ARGS
    CAF_BUILD_STATIC=yes
    CAF_NO_COMPILER_CHECK=yes
    CAF_NO_AUTO_LIBCPP=yes
    CAF_NO_TOOLS=yes
    CAF_NO_EXAMPLES=yes
    CAF_NO_UNIT_TESTS=yes
    CAF_NO_OPENSSL=yes
    CAF_NO_PYTHON=yes
    CAF_NO_OPENCL=yes)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(caf)
hunter_download(PACKAGE_NAME caf)
