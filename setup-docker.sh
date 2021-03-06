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
WORKING_DIR=/tmp/install
TX_UNZIP=installer
mkdir -p ${WORKING_DIR}/${TX_UNZIP}
cd ${WORKING_DIR}

# Retrieve the ascii armor
echo "   - Retrieving armor from texlive"
wget -q https://tug.org/texlive/files/texlive.asc
gpg --no-default-keyring --keyring trustedkeys.kbx --import texlive.asc

# We need a link to get the newest install-tl from:
MIRROR_URL=$(wget -qS --spider --tries 5 http://mirror.ctan.org/ 2>&1 | sed -ne 's/.*Location: \(\w*\)/\1/p' | head -n 1)
echo "   - Using mirror ${MIRROR_URL}"

echo " - Starting download"
download_tl() {
    final_url="${MIRROR_URL}systems/texlive/tlnet/install-tl-unx.tar.gz$1"
    echo "   - Trying to download \"${final_url}\""
    wget -nv --tries 5 "${final_url}"
}
download_tl ""
download_tl ".sha512" # get the sha
download_tl ".sha512.asc"

# Checks
gpgv ./install-tl-unx.tar.gz.sha512.asc ./install-tl-unx.tar.gz.sha512
sha512sum -c ./install-tl-unx.tar.gz.sha512

tar --strip-components 1 -zxf ./install-tl-unx.tar.gz -C ${WORKING_DIR}/${TX_UNZIP}
cd ${TX_UNZIP}

# Run the installer
# TODO: retry if it failes
ROUND=0
until [ $ROUND -eq 3 ] || ./install-tl -profile=/profiles/${TARGET_PROFILE}.profile; do
  sleep 5
  echo "Retry-Round: $(( ROUND++ ))"
done
[ $ROUND -lt 3 ]

# install additional packages, if present
PROFILE_AD="/profiles/${TARGET_PROFILE}.sh"
if [ -f "${PROFILE_AD}" ]; then
    echo "Running profile specific post-install script: \"${PROFILE_AD}\" (bash)"
    bash ${PROFILE_AD}
fi

pip install sltx

echo "Setup texmf home and Folder permission"
# We want another texmf-home to work with (for sltx)
mkdir -p /usr/share/sltx/texmf
mkdir -p /root/texmf
tlmgr conf texmf TEXMFHOME "/usr/share/sltx/texmf:/root/texmf"
# Folder permissions
chmod 775 /usr/share/sltx/texmf
chmod 775 /root/texmf

echo "Not running mktexfmt as they will be executed with the update script"

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
  /var/cache/apk/* \
  ${WORKING_DIR}

# removing the building packages
apk del --no-cache gnupg tar wget

echo "Setup completed!"