#!/bin/bash

[ "$UID" -eq 0 ] || { echo "this operation must be run as root."; exit 1;}


find stack_data -depth ! \( -name 'stack_data' -o -name 'gitea_data' -o -name '.gitkeep' \) \
 -type d,f -exec rm -rvf {} +