---
layout: post
title: Streaming Media from Ubuntu to Bravia
tags: [bravia, ubuntu, streaming, dlna, ps3, minidlna, mediatomb]
---

Over this weekend I set out to connect my Ubuntu machine with my Sony
Bravia TV.( With inspiration from
<a href="http://thoughtworker.in/2010/07/20/dns-323-ps3-and-upnp/">Sachin
Dharmapurikar</a> and
<a href="http://en.wikipedia.org/wiki/Digital_Living_Network_Alliance">DLNA</a>.)

Googling yielded a number of techniques to stream media from linux over
the home network. Some that did suit Bravia and some that did not. The
easiest one to work with was
<a href="http://blog.mycila.com/2010/01/dlna-on-sony-bravia-tvs.html">minidlna
server</a>. Snappy install and my Bravia recognised it like any other
streaming website. I am running the minidlna server for my music and
photos and all the content that is in DVD/mpeg2
format.(<a href="http://wiki.oppodigital.com/index.php?title=DLNA_Linux">How
to install on linux</a>)

I do have some videos that came to me as avi and minidlna does not
support transcoding. (There are some that describe how to do it with
Windows but no out of the box solution with linux yet.) Google for
<a href="http://ps3mediaserver.blogspot.com/">PS3 Media servers</a> I
stumbled upon a <a href="http://code.google.com/p/ps3mediaserver/">PS3
Media Server for Linux</a> - which is a java application that streams
and transcodes nicely.

To get the video to be non-jittery and avoid ffmpeg/tsmuxer crashing I
had to tone the transcoding down to Lowest Quality. Even with that the
video is pleasing albeit a bit grainy in some cases. Documentation
suggests allocating more memory or CPU might help.

To support all this I also installed a bunch of libraries described by
many to help \
<a href="http://juliensimon.blogspot.com/2008/12/howto-compiling-mediatomb.html">transcode,
mux and display thumbnails.</a>. The instructions are for mediatomb but
these libraries work with other dlna servers.

Next stop Getting
<a href="http://www.r3uk.com/index.php/home/38-software/122-ps3-dlna-streaming-in-ubuntu-gutsy">mediatomb
to work on linux and bravia</a>
