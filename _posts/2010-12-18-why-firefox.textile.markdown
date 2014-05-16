---
layout: post
title: Why I use Firefox over Chrome?
tags: [firefox, mozilla, chrome, addons, firebug, proxy, greasemonkey]
---

For development I choose to use tools which make the code transparent. Hence I prefer to use simple text editors over IDEs (although I like IntelliJ for Java code), or browsers that have good builtin support for debugging over closed/magical ones (hence Firefox/Chrome/Safari over IE).

Recently I switched to Chrome as my primary browser since it promised to have all the add-ons to make it comparable to Firefox. On the contrary, in fact it still lacks the power and the flexibility of Firefox for development. Here are a few reasons why Firefox is still better at supporting development:


* [greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/748/) for Firefox works with XMLHTTPRequests for different origin - [greasemetal](http://greasemetal.31tools.com/) (now [userscripts](http://www.chromium.org/developers/design-documents/user-scripts)) for Google Chrome has still not been able to fix this issue.

\_“GM*xmlhttpRequest is same-origin only." - [User Scripts](http://www.chromium.org/developers/design-documents/user-scripts)
.*

* A number of add-ons on Firefox show useful information on the status bar - I use ”DCurrency“:[https://addons.mozilla.org/en-US/firefox/addon/6462/](https://addons.mozilla.org/en-US/firefox/addon/6462/), ”CruiseControl Monitor“:[https://addons.mozilla.org/en-US/firefox/addon/896/](https://addons.mozilla.org/en-US/firefox/addon/896/).

* ”Selenium IDE":[http://seleniumhq.org/projects/ide](http://seleniumhq.org/projects/ide)/ is available for Firefox - a big plus when I am trying to record andplay while I am trying to debug some apps.

* In the minimal view my frequently used bookmarks always show in Firefox ~~Google Chrome shows them when I open a new tab only. Maybe a minor annoyance but I cannot reuse the current tab with a single click access to my bookmarks.

* Minor annoyance~~ when I maximize the window on OSX Google Chrome expands only vertically. Firefox does not have this problem.

* Even with proxy switchers Chrome depends/modifies system proxy settings (diabolical). When using on Windows changing the proxy on IE will affect Chrome and vice-versa.

*“Chrome uses system’s proxy settings (IE proxy settings on Wndows) because it doesn’t have its own proxy settings yet (see [http://crbug.com/266)](http://crbug.com/266)).Therefore, changing Chrome’s proxy settings using Switchy will also affect the system proxy settings.” - quote from [Proxy Switchy!](https://chrome.google.com/extensions/detail/caehdcpeofiiigpdhbabniblemipncjj) extension.*

That means when I use Chrome as a browser with tools like [Sahi](http://sahi.co.in/w/), it will affect how other things work.

In conclusion, for now Firefox is the best browser for development.
