#!/bin/bash
cat > /etc/apt/mirror.list <<EOF
set base_path    /waydroid-deb
set nthreads     20
set _tilde 0
deb [signed-by=/usr/share/keyrings/waydroid.gpg] https://repo.waydro.id/ jammy main
clean https://repo.waydro.id/
EOF