---
layout: post
title: ubuntu power management
tags: [ubuntu, oneiric oncelot, unix, linux, lubuntu, unity, power, powernapd, '11.10']
---

(Intended date of release 2012/02/13. Procrastination.... Finally released today.)

After upgrading to Ubuntu 11.10(Oneiric Oncelot) I had a unique problem with my machine that was not googleable. All I could see is a symptom where my CPU fans would start full speed and keep blowing for a while. While they were up all my CPUs would be at 100% utilization. On various occasions that this would happen I had to restart the machine as it became unresponsive. Often times this would happen at nights when the machine is not being used. 

Recently when I was researching how to manage power settings with LUbuntu(which is harder than it sounds) I found that powernapd was something that Ubuntu running in background to manage power usage of the machine components. This sounds like a reasonable thing to run since Ubuntu now supports Netbooks, Notebooks and Desktops all at the same time. In my case since I am running Ubuntu on a desktop it did not need such strict power management. 
I decided to try and turn this daemon off. Now my CPU utilizations reflect the amount of processor power my currently running applications use and there is no fan whirring anymore. 

ProTip: Tweak your Ubuntu - Lubuntu is minimalistic so use Ubuntu Gnome to tweak LUbuntu settings.


