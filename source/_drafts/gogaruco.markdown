---
layout: post
title: gogaruco 2012
tags: [goldengate, ruby, conference, sfo, san francisco, rails, jruby]
---

Last week I was able to attend the Golden Gate Ruby conference for a day - or a day, I should say, filled with great talks. The four of them I was able to attend I learnt a lot and here is a summary of those talks.

* Deploy, Scale and Sleep at Night with JRuby - presented by Joe Kutner

http://lanyrd.com/2012/gogaruco/sydfq/

Joe talked about the last mile problem. Working on the best TDD code and delivering it with great quality and coverage is only useful if it makes to production and after that if it works in production effortlessly. He focused his talk on helping the System administrator(or someone who supports the production system). 
Joe compared a few tools in this area Warbler, Trinidad and Torquebox - tools that can be used to deploy Jruby applications in the most traditional way. His reasoning was that most of the system administrators know and have deployed java applications for few years. Not only that they have scaled them and can troubleshoot them  without any support. So deploying your ruby application in JRuby makes all the more sense.

Most of his talk came from his book [Deploying with Jruby]:http://pragprog.com/book/jkdepj/deploying-with-jruby

* Services, Scale, Backgrounding and WTF is going on here?!??! - presented by David Copeland

David is from LivingSocial and he talked about how to maintain an application in the line of fire (He is the Technical Lead on the Payments. Whenever there is an issue with Payments LivingSocial is losing money and the Payments team is the one under focus.) He discussed issues related to integrating with multiple systems - ensuring that all the systems respond in a set time with a certain SLA. Most of the challeneges faced were around systems/queues with different latencies. Their journey involved trying out different techniques to ensure that each and every payment is processed correctly and the user updated.

* Schemas for the Real World - presented by Carina Zona
http://lanyrd.com/2012/gogaruco/sydft/#link-mdqh

(http://judytuna.com/2012/09/15/schemas-for-the-real-world-carina-zona-gogaruco-12/)

Gist of what Carina was saying : Building your user interface based on your database design means that you are doing it backwards. Enforcing the users to bucket themselves in the categories you like will leave you with a broken user experience. This 
1:45pm Cruft and Technical Debt: A Long View

Cruft - Technical Debt - presented by Yehuda Katz

http://judytuna.com/2012/09/15/cruft-technical-debt-yehuda-katz-gogaruco-12/

Yehuda was talking about his experience building and maintaining long-living applications. He observed that over time each and everyone of those will build up technical debt. Being aware of such accumulation and addressing it as it becomes relevant is the key to keeping these applications in good shape. Not all technical debt needs to be addressed at a given time. But if a certain part of code needs to be changed(due to a feature/bug) and it has certain cruft - that is when you need to fix it. (JudyTuna has a longer live blog on Yehuda's talk.)