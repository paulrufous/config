#!/bin/sh
# Requires root privileges

rmmod usb_storage
rmmod uhci_hcd
rmmod ehci_hcd
s2disk
sleep 2
modprobe uhci_hcd
modprobe ehci_hcd
modprobe usb_storage
#swapoff -a; swapon -a
