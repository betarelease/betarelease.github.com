---
layout: post
title: "SiriMingle - Siri assistance for Mingle"
date: 2012-12-09 09:16
comments: true
tags: [siri, iphone, osx, ios, siriproxy, mingle, sirimingle, api, crack, httparty, plugin, robot, sudo]

---

TL&;DR

Announcing SiriMingle - a tool to interact with Mingle using SiriProxy. Bringing the power of Siri voice control to modify cards, get status and ask questions about the project. 

It can be downloaded from http://github.com/betarelease/sirimingle.git and used with SiriProxy

I do not know what SiriProxy is.... Read on

SiriProxy is a proxy written in ruby 1.9 to allow people to use the power of Siri to perform useful tasks. Setting up SiriProxy was not trivial before. Over time and on 12.04 it can be more easily done. 

Here is how:

* Install Ubuntu 12.04 on your virtualbox(virtual box link), or natively on your desktop/macpro.(For dualbooting on macpro follow the instructions : )
On virtualbox the following setting needs to be configured to ensure that the VM running Ubuntu gets a native IP address on the host network. (Configure bridge.......).

* Install git, ruby et al.. (Assuming that you already know this)

* Download the http://github.com/betarelease/SiriProxy.git/install_deps.sh_ script to get you started. It is recommended that you download the whole project.
Run the script. This script should install all dependencies required for dnsmasq. dnsmasq is a tool that allows you to perform dns masquerading on any network. After running this script you should have the following : dnsmasq, rvm and ruby 1.9.3 installed.

* Change the dnsmasq configuration as follows:


* Setup SiriProxy

.siriproxy
.siriprox/config.yml

* Build the siriproxy gem and executable 

rake install

siriproxy bundle

rvmsudo siriproxy server


If everything has gone well so far you should see 
"Starting server on port 443"

This verifies that the dnsmasq is setup correctly and that Siriproxy can be run on your machine. 

Now change 
 
siriproxy gencerts # generates certificates in .siriproxy folder

Email this certificate and install it on your phone by opening the email and opening the attachment. 


SCREENSHOT OF INSTALLED CERT.

Once the cert is installed change the dns settings for the network and add the IP address of your Ubuntu machine before the other DNS server entry.

SCREENSHOT OF MODIFIED DNS

Now your phone is ready to talk to your Siriproxy server.

Restart your SiriProxy server by 'rvmsudo siriproxy server'.

Invoke Siri on your phone: You should see the interaction logs in your terminal indicating that infact Siri is connecting to your SiriProxy via your dnsmasq. 

You should be able to talk to Mingle now.

Consider your Mingle Siried.