---
layout: post
title: CruiseControl Monitors - Gotchas and repost
tags: [continuous integration, ci, cruisecontrol, big visible monitors,
cc*monitor, github, opensource, cc*board]
---

When trying to use
<a href="http://github.com/betarelease/cc_monitor">cc*monitor</a> on my
current project I hit the known snag of making it work with
cruisecontrol.rb. For the umpteenth time I was not able to find any
documentation on making it publish cc*tray compatible xml, which would
make cc\_monitor work with cc.rb.

After some googling and mucking around I downloaded latest
cruisecontrol.rb and looked at its routes. I found a route
“XmlServerReport.aspx” which does publish in ‘cctray’ format. I plugged
it in to cc\_monitor and it works like a charm.

So now I can announce that cc*monitor works with any java/ruby versions
of cruisecontrol. If you would like to use cc*monitor with a continuous
integration tool make sure it publishes a cc\_tray compatible xml and
you are all set.

Recently I successfully added ‘bacon’ to test my ramaze code for
cc\_monitor. The repository has been updated so check it out.

I was also suggested to check out
<a href="http://github.com/betarelease/cc_board">cc\_board</a> which is
a build monitor written in sinatra by David Vollbracht. Another app to
make big visible charts for your team!
