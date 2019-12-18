#!/bin/sh -e
#
# Script used to setup and run virtualhere

    ARCH=`uname -m` && \
    if [ "$ARCH" == "x86_64" ]; then \
       ARCH_VR=vhusbdx86_64; \
    else \
       ARCH_VR=vhusbdarm; \
    fi

echo '*** Listing all usb-devices. Use this list to adjust AllowedDevices in config.ini ...'
lsusb || echo 'Execution of command lsusb failed. Make sure you have access to USB-Devices on the host.'

cd data

echo '*** Deleting previous bus_usb_*-files from data directory ...'
find . -name '*bus_usb_*' -delete
echo '*** Checking for new version of VirtualHere ...'
wget -N https://www.virtualhere.com/sites/default/files/usbserver/$ARCH_VR || echo 'Checking for remote copy of VirtualHere failed'

chmod +x ./$ARCH_VR
./$ARCH_VR

exit 0
