---
layout: post
title: javascript testing with seacucumber
tags: [javascript, testing, seacucumber, jquery, prototype, rails, ruby]
---

<a href="http://seacucumber.rubyforge.org/">Seacucumber</a> was a project that was a tool we used on a previous rails project. My friends <a href="http://m2ward.blogspot.com/">Mike Ward</a> and <a href= "http://www.peterryan.net/">Peter Ryan</a> opensourced it some time back. It was dormant for awhile since it worked great with prototype. Another thing was that it looked and behaved very similar to <a href="http://drnicwilliams.com/2008/01/04/autotesting-javascript-in-rails/">Dr. Nic’s javascript testing</a> that you can download for rails. Recently I was on a project where we used jquery and we did not have anything to run javascript tests and break the build on failure.

So I revived seacucumber development and added jquery support to it. I had to modify jquery test runner to postback results as prototype does. So if you need a tool to automate your javascript testing you should use seacucumber. It has been moved to <a href="https://github.com/betarelease/seacucumber/tree">github</a>. 

Feel free to download it, fork it and use it. Let me know what you would like added to this tool.
