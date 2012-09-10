---
layout: post
title: "Installing Ubuntu on MacPro with OSX Lion - Dualboot"
date: 2012-09-10 09:16
comments: true
---
 
Installing Ubuntu on Macpro turned out to be little trickier than I would have liked it to be. For starters OSX Lion does not detect the Ubuntu ISO disc as bootable or something that bootcamp can load an OS from. There are tricks on the web that allow you to get around that. 

I am listing a few quirks that I came across while getting all this to work.

The Challenge: Install Ubuntu on a MacPro that is running OSX Lion and make it so that it can dualboot to ubuntu.



* Install REFit

Download and install REFit. This will allow your BIOS to work with bootloaders other than that of Apple. Once you have installed it restart you machine. If you are lucky you will see the REFIt menu on restart. Do not be disappointed if you do not see it at first. Restart again and you will surely see the REFIt menu this time. Once you have REFIt installed it is time to partition the HardDisk to make room for Ubuntu.


* Partitioning the disk

OSX comes with two utilities that allow you to partition your hard disk. Word of caution: Do not use another partitioning tool as it has been knows to cause problems - especially when booting back into the Mac. You will put your data on the Mac OSX partition at risk.
Given that you have to use OSX to atleast initially partitioning disks - you can choose between Disk Utility or Boot camp assistant. In both scenarios the partitioning is pretty clearly documented and easy. In the case of bootcamp with the new UI select "Install  or remove Windows 7" and uncheck "Download the latest Windows support from Apple".

When prompted choose the partition size for Windows by dragging the partitioner. Once you have a desirable size configured clicking 'Continue' will look for a Windows 7 disk for installing Windows on the new partition. You can trick the boot camp assistant by actually inserting a bootable Windows 7 disk. Once it detects the disk and starts partitioning you can remove the Windows 7 disk and replace it with Ubuntu bootable disk. Once the partitioning is complete close Bootcamp Assistant.



* Installing Ubuntu

Now restart the machine and hold the 'C' key while restarting. This will allow you to boot from the bootable CD Drive. Once booting starts you should see the Ubuntu installation UI. Follow the instructions till the time, when it asks you for a partition to install Ubuntu. 
Choose manual partition editing.
At this moment it will show you a list of existing partitions. In this list find the partition you created for Windows(should be labelled as fat32 or msdos or something that indicates its a windows partition). Delete this partition. You should have a partition called "FREE SPACE". Now select this partition called "FREE SPACE"(about the size of your original partition for Windows) and create a partition on it of type EXT4 and "/" being mounted from here.(Make note of this partition information eg: /dev/sda3)

Write this partition information to the disk and let Ubuntu do its thing. Follow the instructions on-screen to configure Ubuntu to your liking. Ubuntu will ask you where it should write the grub bootloader. At this prompt enter the above partition information /dev/sda3. This will ensure that REFIt will be able to find Ubuntu on your harddisk and allow you to boot into it. This step is the key to the process of being able to use the Ubuntu partition at all. 

Once the installation of Ubuntu is completed shutdown your machine and restart. On restart you will see a REFIt menu with an option to select 'Penguin operating system'. You may see multiple penguins. Pick the penguin that points to your harddisk partition above(/dev/sda3 => 'Boot from Hard disk partition 3') option and you can boot into Ubuntu.

With this both Ubuntu and Mac OSX can be booted into without much trouble. Infact on booting into linux Grub now detects Mac OSX as well.

Happy Dual booting...