---
layout: post
title: Setting up wireless usb card on Ubuntu - Lucid Lynx
tags: [linux, unix, ubuntu, wireless usb, wireless, drivers, dwa–125]
---

I have faced the same problems with Wireless Networking as mentioned by
many on the web. \
I tried <a 
href="https://help.ubuntu.com/community/HardwareSupportComponentsWirelessNetworkCardsLink
sys#USB">Hardware Compatibility List for Linux</a> and many links on
that list. In an attempt to install custom drivers I would always end up
with a network card that would detect wireless but never would
communicate over wireless. After going through a number of cards and
uninstalling and installing drivers I found one that worked really well
without resorting to the ndiswrapper solution (dealing with anything
windows just feels unclean). Finally I found a card that worked and also
provided native linux drivers.The wireless usb card that worked was -
<a href="http://sasha.gerrand.id.au/2010/06/03/resolving-driver-problems-for-d-link-dwa-125-
wireless-150-usb-adapter-in-ubuntu/">D-Link DWA–125 with Ubuntu Lucid
Lynx</a>.It also helped that D-Link in fact published a linux driver for
their wireless usb card
