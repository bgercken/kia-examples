#!/bin/bash
#
umask 022

[[ $UID -ne 0 ]] && echo && echo "You must be root to run this!" && echo && exit

pushd /tmp
wget http://packages.ntop.org/apt/ntop.key
apt-key add ntop.key
popd
cat >> /etc/apt/sources.list.d/ntop.list << EOF
deb http://apt.ntop.org/stretch_pi armhf/
 deb http://apt.ntop.org/stretch_pi all/
EOF

apt-get update
apt-get install ntopng nprobe


