---
layout: post
title: Isn't 40 mins too long for a build?
tags: [mingle, build, ci, continuous delivery, cd,feedback]
draft: true
---

Yes, our CI build on Mingle takes 40 mins.

Yes, Mingle is a ruby application. Yes, Mingle runs on Java using JRuby.

With all these superlative technologies Mingle CI build still takes 40 mins. And this is an improvement. And we are happy with it.

Now that I have made some bizarre statements let me explain what they mean(before you start calling me crazy).

## Some History

Mingle has been built in ruby and is deployed using JRuby/Java. Mingle was built originally to work with database technologies that did not support NoSQL. So, Mingle team went ahead and built their own way of constructing schemas on the fly. These schemas were further elastic - in that they could be changed on the fly - as your team becomes better or needs different measurements/metrics over time. This provided ultimate configurability to Mingle.

Given this technology and the fact that Mingle supports Oracle, alongwith it's favorite PostgreSQL, Mingle team became heavily reliant on testing - all through to the database layer. Mingle team quickly learnt that 'select is not broken on PostgreSQL' - but for Oracle it is an entirely different tale.

### Select is in fact broken on Oracle.

Select with an IN clause when used with Oracle has a limit of 1000 results and we have had to apply that restriction on numerous of our Select statements(only for Oracle). Furthermore, Oracle does not do a very good job at optimizing SQL - thus making a few of our complicated JOINs unpleasant to the naked eye as well as irking some Oracle DBAs - and hence being too slow to be useful with large data. Given that Oracle feature, we depend on our tests to ensure that such behaviour is not broken. Over the years we have been able to improve the granularity of tests as well as improve coverage.

With such tight coupling it would certainly make it tricky to separate the tests from the database.

## Completely test driven application

Given the design on Mingle a number of our functional tests hit the database. Some of our unit tests do this as well.

Along with the configurability Mingle also lets the user derive lot of mileage through reports and collaboration. Both of these are applications in themselves(and there are business around each of them). Since Mingle supports interactions at so many levels our acceptance tests become more involved and require journeys instead of one simple test here and there.

All this becomes even more complicated when the application changes hands through multiple generation of teams. Over time I learnt that some tests could use some major refactoring but the effort may not yet justify the improvement in performance.

Thanks to this suite of tests we have often found bugs/test failures in areas that seemed to be remotely connected to the features being built. Some of the deeper coupling became obvious to us

## Highly Parallelized CI Build


## Power consumption as a build metric


## Fast Feedback, Fast Feedback, Fast Feedback
