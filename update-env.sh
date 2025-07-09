#!/usr/bin/env bash

url=https://mikrotik.com/download
file=WinBox_Linux.zip

src=$(curl -sfL ${url} | grep -oP "href=\"\K[^[0-9]+.*\/${file}")
ver=$(echo ${src} | grep -oP "\K[0-9]\.+[0-9]+[beta]*[0-9]*")

cat <<EOF > ${PWD}/.env
WINBOX_VERSION=${ver}

TARGET_OS=\${TARGET_OS:-fedora}
OS_VERSION_ID=\${OS_VERSION_ID:-latest}
COMPOSE_FILE=\${PWD}/build.yml
EOF

echo ${src} > sources

exit 0
