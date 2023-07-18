apk add --no-cache file imagemagick
apk add --no-cache make
# font fira code is in edge testing
echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk add --update --no-cache font-fira-code@testing
sed -i '71 c<policy domain="coder" rights="all" pattern="MVG" />' /etc/ImageMagick-7/policy.xml