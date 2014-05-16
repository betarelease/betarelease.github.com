---
layout: post
title: Software KVM that works on linux, OSX and Windows
tags: [kvm, osx, linux, windows, software, synergy]
---

I was using [Teleport for Mac](http://www.abyssoft.com/software/teleport/) as my KVM. But I could only control a mac mini and my laptop with it. I was looking for something that would work with Ubuntu and MacOSX switching the keyboard and mouse between them.

I found [Synergy Plus](http://code.google.com/p/synergy-plus/) that was exactly the software KVM for my purpose. (There is also an older project called [Synergy](http://synergy2.sourceforge.net/), but Synergy Plus is the latest copy being managed on google code.)

Setting up my Ubuntu machine as the server and my OSX laptop as a client was facilitated by

[Configure Synergy in six steps](http://www.mattcutts.com/blog/how-to-configure-synergy-in-six-steps/)

[Use synergy between OSX and linux](http://www.foogazi.com/2010/05/27/how-to-configure-synergy-on-mac-osx-and-windows-xp/)

One issue I had was using a PC keyboard with OSX (since my Ubuntu server is the synergy server). I was not able to map the Super key to be theCommand key. Tried various options with keymapping on Ubuntu without much success. Resolutions welcome.
