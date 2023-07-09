#!/bin/bash
cat > /etc/apt/mirror.list <<EOF
############# config ##################
set base_path    /waydroid-deb
set nthreads     20
set _tilde 0
############# end config ##############
deb http://repo.waydro.id/ jammy main
deb http://repo.waydro.id/ focal main
deb http://repo.waydro.id/ bookworm main
deb http://repo.waydro.id/ bullseye main
deb http://apt.gfdgdxi.top ./
#clean https://repo.waydro.id/
EOF