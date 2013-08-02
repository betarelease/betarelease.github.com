---
layout: post
title: Android Intensive - Refined
tags: [android, google, phone, java, robolectric, calabash, hockeyapp]
---
At our San Francisco office we have been working on building mobile development capabilities recently. Here is a little glimpse into what we did to make it work. 

The plan was to build enough initial capability so that we could bring everyone at a collaborative workshop and take their skills to the next level. This program started by a facilitated learning around designing applications for the mobile. We focused on Android platform. 

## Incorporating feedback and setup in advance

One of the feedback items in the past Android Intensive Retrospective was the time and energy wasted in setup. We had chosen a single app for the purpose of the workshop but everyone had to jump through the hoops of having to set it up and invent the wheel again for their own machine. To speed this process James Spargo and Kris worked on creating a VM that would have everything setup and ready to go. They spent a weekend doing that. Having this setup helped immensely because everyone was ready to write code right away.

_Key: Ensure better preparation with setup of environments._

## Smaller lessons, quicker turnaround, more collaboration

{% img left /images/code_showcase.jpg 450 700 %}

Having everything setup had us started on the right foot. Kris also consciously chose stories that would be implemented in a short time so that we would have more time to talk about the nuances and learn more. Since the code was ready to deploy making small changes and iteratively see it work was a satisfying experience to the developers. We also did more frequent/more showcases of code as we observed that there were multiple approaches being implemented. At one point of time it was a competition, where everyone wanted the best implementation to be shown and used. This debate of ideas kept the mood light and allowed for healthy critique of implementation. Also since it was being done iteratively and committed to the code base everytime we would be able to see/trace the evolution of the implementation.

_Key: Small, achievable, sharable goals._


## Concepts we learnt and implemented

  - Adding the action bar to an application
  - Adding navigation in the action bar - edit, search etc.
  - Adding the back button to the action bar
  - Adding the maps and making your application location aware.
  - Deployment to an android device - with hockeyapp

_Key: Focus on what is important and do not be too ambitious._

## Learnings from the Android Intensive

We had a flow going for the android intensive workshops. Some of the things we did that worked for such a workshop are as follows:

  - Frequent code sharing and showcase
  - Planning the lessons ahead of time - including a sample code base
  - Having a well configured environment(in this case a VM) - was immensely helpful in ensuring that everyone can get started fast.
  - Narrower focus allowed for rapid/more learning
  - We lost a few members since the last workshop - Having a smaller team helped. Need to ensure that more people can remain committed to such efforts.
  - Having a dedicated trainer(thanks Kris Gonzalez) - was of immense value - in terms of experience, prep of workshops and getting the right lessons across.
  - Having atleast one point person on each team(special thanks James Spargo) - ensured coordination and collaboration issues became a shared responsibility.

_Key: Teams with dedication with the right facilitation can make these kinds of programs successful._

Acknowledgement: This workshop and the program would not have been this awesome without Kris Gonzalez and James Spargo.
