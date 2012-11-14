---
layout: post
title: "SiriMingle - Siri assistance for Mingle"
date: 2012-10-14 12:16
comments: true
tags: [siri, iphone, osx, ios, siriproxy, mingle, sirimingle, api, crack, httparty, plugin, robot, sudo]

---
(updated with screenshots 10/14/2012)

TL&;DR

Announcing SiriMingle - a tool to interact with Mingle using SiriProxy. Bringing the power of Siri voice control to modify cards, get status and ask questions about the project. 

It can be downloaded from [sirimingle](http://github.com/betarelease/sirimingle.git) and used with SiriProxy.

[A Demo of how it works](http://youtu.be/8ONszZN7q9U)

I do not know what SiriProxy is.... Read on

SiriProxy is a proxy written in ruby 1.9 to allow people to use the power of Siri to perform useful tasks. Setting up SiriProxy was not trivial before. Over time and on 12.04 it can be more easily done. 

Here is how:

* Install Ubuntu 12.04 on your virtualbox(virtual box link), or natively on your desktop/macpro.(For dualbooting on macpro follow the instructions : )
On virtualbox the following setting needs to be configured to ensure that the VM running Ubuntu gets a native IP address on the host network. 

{% img left /images/vm_config.png 300 500 %}

* Install git, ruby et al.. (Assuming that you already know this)

* Download the [install_deps.sh](http://github.com/betarelease/SiriProxy.git/install_deps.sh) script to get you started. It is recommended that you download the whole project.
Run the script. This script should install all dependencies required for dnsmasq. dnsmasq is a tool that allows you to perform dns masquerading on any network. After running this script you should have the following : dnsmasq, rvm and ruby 1.9.3 installed.

[Guide: Setup Working SiriProxy](http://www.techjawa.com/2012/01/31/guide-setup-working-siriproxy-three-little-pigs/) is a great guide to setting SiriProxy correctly. You can choose to ignore setting up the Three Little Pigs server.
Follow the instructions closely to setup Ubuntu 12.04 with dnsmasq and Siriproxy.  

If everything has gone well so far you should see 
{% highlight ruby linenos%}
"Starting server on port 443"
{% endhighlight %}

This verifies that the dnsmasq is setup correctly and that Siriproxy can be run on your machine. 

Now generate a certificate 
 
{% highlight ruby linenos%}
siriproxy gencerts # generates certificates in .siriproxy folder
{% endhighlight %}

Email this certificate and install it on your phone by opening the email and opening the attachment. 

{% img left /images/sirimingle_cert.png 300 500 %}
{% img right /images/dns_entry.png 300 500 %}

Once the cert is installed change the dns settings for the network and add the IP address of your Ubuntu machine before the other DNS server entry.

Now your phone is ready to talk to your Siriproxy server.

Restart your SiriProxy server by 
{% highlight ruby linenos%}
rvmsudo siriproxy server
{% endhighlight %}


Invoke Siri on your phone: You should see the interaction logs in your terminal indicating that infact Siri is connecting to your SiriProxy via your dnsmasq. 

Once you have SiriProxy setup change the ~/.siriproxy/config.yml to add your mingle hostname and credentials. This will allow SiriProxy to interact with the Mingle API.

Restart SiriProxy by doing the following:
{% highlight ruby linenos%}

rake install

siriproxy bundle #this should install the dependencies including the siriproxy-sirimingle plugin.

rvmsudo siriproxy server
{% endhighlight %}

Once the server is started you should be able to talk to SiriMingle.

{% video http://youtu.be/8ONszZN7q9U 480 360 %}

Let the Siri be with you.