#!/usr/bin/env bash

FREETYPE=./matlab/bin/glnxa64/libfreetype.so.6.16.0
if [[ -f "$FREETYPE" ]]; then
    echo -e "MATLAB's version of libfreetype is present! This causes issues with MATLAB Addons! \nPlease exclude or delete from ./matlab/bin/glnxa64"
    exit 1
fi

LIBSTDCXX=./matlab/sys/os/glnxa64/libstdc++.so.6
if [[ -f "$LIBSTDCXX" ]]; then
    echo -e "MATLAB's version of libstdc++ is present! This causes issues with MATLAB OpenGL Acceleration! \nPlease exclude or delete from ./matlab/sys/os/glnxa64"
    exit 1
fi

# LD_LIBRARY_PATH=~/matlab-env/matlab/sys/os/glnxa64
MATLAB_SHELL=/bin/bash source ./result/bin/matlab-env
