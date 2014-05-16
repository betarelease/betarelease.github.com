---
layout: post
title: Flash on Linux
tags: [flash, ubuntu, linux, unix, howto, tutorial, hulu.com]
---

Last night when struggling to get Firefox to play with Ubuntu and Flash I found this <a href="https://answers.launchpad.net/ubuntu/+source/firefox-3.0/+question/57822">forum</a>.

The instructions that worked for me are as follows

1. Remove all installations of flash (9, 10.. )
2. Remove all installations of gnash
3. Remove all installations of swfdec
4. (Basically remove everything that conflicts with flash player - some of these things come bundled with Ubuntu)
5. Remove any file in “/usr/lib/firefox/plugins” with the word flash in its name. 
eg. libflashplayer.so or in my case alternate-flashplugin.so.

6. Once you have verified that all this has gone (You could use about:plugins url in your firefox to see all the plugins you have along with their associated file types) - reinstall the latest version of flash player from adobe website.

7. You should have Hulu.com working.

Hope this helps someone who is trying to do the same.

“Now when someone asks - Do you have Flash working on Linux - you know what to say”
