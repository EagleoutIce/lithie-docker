apk add --no-cache file imagemagick
apk add --update --no-cache font-fira-code
sed -i '71 c<policy domain="coder" rights="all" pattern="MVG" />' /etc/ImageMagick-7/policy.xml