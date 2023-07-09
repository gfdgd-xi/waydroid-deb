#!/bin/bash
rm Packages || echo "Failed to remove packages file"
rm Packages.gz || echo "Failed to remove packages.gz file"
rm Release || echo "Failed to remove release file"
rm Release.gpg || echo "Failed to remove release.gpg file"
rm InRelease || echo "Failed to remove inrelease file"
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "3025613752@qq.com" --batch --pinentry-mode="loopback" --passphrase="$KEYPASSWORD" -abs -o - Release > Release.gpg || error "failed to sign Release.gpg with gpg "
gpg --default-key "3025613752@qq.com" --batch --pinentry-mode="loopback" --passphrase="$KEYPASSWORD" --clearsign -o - Release > InRelease || error "failed to sign InRelease with gpg"