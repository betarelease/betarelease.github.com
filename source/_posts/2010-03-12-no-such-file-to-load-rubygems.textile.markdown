---
layout: post
title: no such file to load —rubygems
tags: [ruby, rubygems, irb, giternal, git, rvm, jruby, paths]
---

While working on my mac and trying to use giternal I ran into ‘no such
file to load —rubygems’. While I had been using ruby apps on the machine
for a while, without any issues and with all the installed gems, this
seemed weird.

I tried using the irb and check if

irb\> require ‘rubygems’

would work. But I got the same error. I was using the default mac
version of the ruby installation that is installed at
‘/System/Library/Frameworks/Ruby.framework…..’ and did verify that
rubygems was installed and that rubygems.rb was also present.

On further investigation I found that the default ruby that was run on
the command line was 1.8.7 when I expected 1.8.6. \
It appears that my path contained ‘/opt/local/bin’ before ‘/usr/bin’
which made the 1.8.7 version of ruby default and thus clobbered all by
1.8.6 settings and lost rubygems.

To fix this I moved ‘opt/local/bin’ to be after ‘/usr/bin’ in my $PATH
and voila everything works again.

I have also been meaning to try RVM - maybe its time to give it a shot
since my personal projects are on 1.8.7 and I have jruby as well as
1.8.6 installed on my mac.
