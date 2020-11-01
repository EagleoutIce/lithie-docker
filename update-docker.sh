#!/bin/sh

# Exit immediately if command nonzero
set -eu
# Desired profile for container
TARGET_PROFILE="$1"

echo "Running update for target-profile \"${TARGET_PROFILE}\""

echo "Update sltx"
pip install --upgrade sltx
sltx dependency /sltx-dep.yaml
sltx cls --cache

echo "Rerun of mktexfmt"
mktexfmt pdflatex.fmt
mktexfmt latex.fmt

echo "Cleaning up afterwards to get a smaller container"
# We clean doc and source to, if some profile wants to install them anyway
rm -rf \
  /opt/texlive/texdir/install-tl /opt/texlive/texdir/install-tl.log \
  /opt/texlive/texdir/texmf-dist/doc /opt/texlive/texdir/texmf-dist/source \
  /opt/texlive/texdir/texmf-var/web2c/tlmgr.log \
  /root/.gnupg \
  /update-docker.sh \
  /profiles/ \
  /sltx-dep.yaml \
  /sltx-drivers.log
  /var/cache/apk/* \
  ${WOKRING_DIR}

echo "Setup completed!"