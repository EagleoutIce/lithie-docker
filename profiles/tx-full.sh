apk add --no-cache file imagemagick
sed -i '71 c<policy domain="coder" rights="all" pattern="MVG" />' /etc/ImageMagick-7/policy.xml