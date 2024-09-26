#!/bin/sh

FK_FORCE=yes flash-kernel $(find /boot -name 'vmlinuz-*' | sed -e 's|^[^-]*-||')
cat >> /etc/gdm3/custom.conf << EOF
WaylandEnable=false
EOF
