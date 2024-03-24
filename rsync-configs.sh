#!/bin/bash

#
# Copy config folders for Klipper printers in their folders
#

set -o errexit
set -o nounset


REMOTE_FOLDER='~/printer_data/config/'
LOCAL_FOLDER='~/Projects/klipper-config/'

rsync rook.local:"$REMOTE_FOLDER" "${LOCAL_FOLDER}rook-2020-mk1/" \
    -rtPWh --copy-links --stats --delete-delay -n
