#!/bin/bash
cat > /etc/apt/mirror.list <<EOF
set base_path    /waydroid-deb
set nthreads     20
set _tilde 0
deb http://repo.waydro.id/ jammy main
#clean https://repo.waydro.id/
EOF