#!/bin/bash

#
# Copy config folders for Klipper printers in their folders
#

set -o errexit
set -o nounset
set -o xtrace


REMOTE_FOLDER="/home/leon/printer_data/config/"
LOCAL_FOLDER="/home/leon/Projects/klipper-config/"

rsync rook.local:"$REMOTE_FOLDER" "${LOCAL_FOLDER}rook-2020-mk1/" \
    -rtPWh --copy-links --stats --delete-delay
