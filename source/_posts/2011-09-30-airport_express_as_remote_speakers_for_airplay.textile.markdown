---
layout: post
title: Airport Express as Remote Speakers for Airplay - Also with Linux
tags: [osx, linux, ubuntu, itunes, airport, express, pulseaudio, remote,
streaming, airplay]
---

I have an airport express that I used to use as my wireless router when
I travel. Very convenient and useful when hotels do not provide a
wireless.(Yes I am looking at you Marriott.) Airport Express thanks to
apple technology also supports airplay to play music over the air,
and/or printer sharing via a USB connection.

I was hoping to connect my desktop and my laptop to my music system
which is located in another room than these machines. Apparently airport
express can connect with your existing wireless router as a client (yes
they have thought of everything) allowing you to do exactly that. \
Here is a list of quirks you need to remember when you try to set it up
as a [wireless
client](http://support.apple.com/kb/HT2272?viewlocale=en_US).\
\# Prerequisites - Note down the channel number your current wireless
router is transmitting on - anywhere between 1~~11. \
\# Plug in the airport express and connect it to your mac using the
ethernet cable.\
\# Start airport utility~~ which will try to detect any airport devices
but will not find any.\
\# Hard reset by pressing the reset button with a paper clip for atleast
10 seconds. The light blinks rapidly when you are holding the pin and
then in 30 seconds becomes steady - this means that airport express is
restarting.\
\# Now rescan on the airport utility - it should find one device with
name ‘Base station xxxxxx’ - with last 6 digits from the mac address. It
should have a yellow icon next to it - indicating that it has not
connected to the internet.\
\# Perform a Manual Setup - DO NOT hit continue.\
\# Change the channel number that is automatically set on the airport
express to the one from your wireless router.\
\# In ‘Wireless’ connect the airport express as a client - select ‘Join
an existing wireless network’ - select appropriate SSID of the wireless
router.\
\# Browse through other tabs if you are interested in the details - else
click ‘Update’.\
\# The airport express should restart and reappear on the Airport
Utility. This usually takes over a minute. When it reappears it should
appear with the new name you chose and with a green light next to it -
indicating it was able to connect to your wireless router.\
\# If everything was successful and airport express liked the ‘Enable
for Airplay’ selection you made - you will see a red light in the stereo
socket light up. Connect your speakers to airport express and you should
be able to airplay your music using iTunes.

Notes: \
\# You may encounter “AirPort Utility was unable to find your AirPort
wireless device after restarting.” One of the reasons for this is that
Airport express cannot connect to your router with WPA2 or any other
security.(Look at [Airport Express Amber
Light](http://www.mac-forums.com/forums/internet-networking-wireless/103890-airport-express-existing-wireless-network-help.html)
for more details.)\
\# To ensure security I disabled ‘SSID broadcast’ and enabled MAC
filtering on my router. I added the MAC addresses of my Airport Express
(Airport Admin Utility will show those addresses when it detects Airport
Express.)

To allow your linux machine to connect and airplay to the airport
express you need install pulseaudio’s drivers and support for remote
audio protocol by running [airtunes with
Linux](http://www.makeuseof.com/tag/apples-airtunes-ubuntulinux/)

{% highlight ruby linenos%}

sudo apt-get install pulseaudio-module-raop paprefs

1.  (I am not making this up- The protocol is Remote Audio Output
    Protocol - raop)

{% endhighlight %}

Setup pulseaudio to enable remote speakers as described in [PulseAudio
settings](http://blog.paulbetts.org/index.php/2007/04/15/pulseaudio-in-ubuntu-feisty-play-sound-over-the-network/).

Once it is installed you may need to restart your Linux machine. On
restarting you should see your newly available remote speakers in your
Sound Preferences. Now you should be able to stream from your Linux
machine too.

And you are done.\
Enjoy remote streaming.
