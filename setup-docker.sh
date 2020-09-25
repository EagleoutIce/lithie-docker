#!/bin/sh

# Exit immediately if command nonzero
set -eu

# Init user
addgroup lithie-group && adduser lithie-user --home /root -D -G lithie-group

# Desired profile for container
TARGET_PROFILE="$1"

echo "Running setup for target-profile \"${TARGET_PROFILE}\""

echo " - Install Packages"
# Install wanted packages
apk add --update --no-cache bash python3 tar wget gnupg ghostscript perl xz git
echo " - Setup python"
ln -sf python3 /usr/bin/python
python3 -m ensurepip
pip3 install --no-cache --upgrade pip setuptools

echo " - Preparing the texlive installation"
# Install texlive itself
WOKRING_DIR=/tmp/install
TX_UNZIP=installer
mkdir -p ${WOKRING_DIR}/${TX_UNZIP}
cd ${WOKRING_DIR}

# Retrieve the ascii armor
echo "   - Retrieving armor from texlive"
wget -q https://tug.org/texlive/files/texlive.asc
gpg --no-default-keyring --keyring trustedkeys.kbx --import texlive.asc

# We need a link to get the newest install-tl from:
MIRROR_URL=$(wget -qS --spider --tries 6 http://mirror.ctan.org/ 2>&1 | sed -ne 's/.*Location: \(\w*\)/\1/p' | head -n 1)
echo "   - Using mirror ${MIRROR_URL}"

echo " - Starting download"
download_tl() {
    final_url="${MIRROR_URL}systems/texlive/tlnet/install-tl-unx.tar.gz$1"
    echo "   - Trying to download \"${final_url}\""
    wget -nv --tries 6 "${final_url}"
}
download_tl ""
download_tl ".sha512" # get the sha
download_tl ".sha512.asc"

# Checks
gpgv ./install-tl-unx.tar.gz.sha512.asc ./install-tl-unx.tar.gz.sha512
sha512sum -c ./install-tl-unx.tar.gz.sha512

tar --strip-components 1 -zxf ./install-tl-unx.tar.gz -C ${WOKRING_DIR}/${TX_UNZIP}
cd ${TX_UNZIP}

# Run the installer
# TODO: retry if it failes
./install-tl -profile=/profiles/${TARGET_PROFILE}.profile

# install additional packages, if present
PROFILE_AD="/profiles/${TARGET_PROFILE}.sh"
if [ -f "${PROFILE_AD}" ]; then
    echo "Running profile specific post-install script: \"${PROFILE_AD}\" (bash)"
    bash ${PROFILE_AD}
fi

echo "Cleaning up afterwards to get a smaller container"
# We clean doc and source to, if some profile wants to install them anyway
rm -rf \
  /opt/texlive/texdir/install-tl /opt/texlive/texdir/install-tl.log \
  /opt/texlive/texdir/texmf-dist/doc /opt/texlive/texdir/texmf-dist/source \
  /opt/texlive/texdir/texmf-var/web2c/tlmgr.log \
  /root/.gnupg \
  /setup-docker.sh \
  /profiles/ \
  /texlive.asc \
  /sltx-dep.yaml \
  /var/cache/apk/* \
  ${WOKRING_DIR}

# building packages
apk del --no-cache gnupg xz git wget

echo "Setup completed!"