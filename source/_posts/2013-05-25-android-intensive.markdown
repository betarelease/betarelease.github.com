---
layout: post
title: Android Intensive - collaborative learning experience
tags: [android, google, phone, java, robolectric, calabash]
---
At our San Francisco office we have been working on building mobile development capabilities recently. Here is a little glimpse into what we did to make it work. 

The plan was to build enough initial capability so that we could bring everyone at a collaborative workshop and take their skills to the next level. This program started by a facilitated learning around designing applications for the mobile. We focused on Android platform. 

## Introduction to Android and self-learning

At the start of the learning session we gathered the developers and split them into teams to allow for collaboration based on colocation and interest. Once the teams were setup they worked on figuring out what they would like to build during this learning experience. Since the focus was learning the ability to deliver business driven value was allowed to be compromised when it made sense.

Most of the development team was fairly inexperienced with this technology so we involved Kris to get us started. He helped us get started with a video explaining us how the ecosystem differs from a basic java stack and how to use the IDE and build sytem. Once we all got a hang of it, the teams were on their own course of trying to build something and test it with prevalent testing tools.

One of the teams figured out how to use Robolectric for unit tests. Another group figured out how to use calabash tests and build this on TravisCI. While the teams were addressing different domains, their basic problems were similar viz. making requests, receiving data, displaying it efficiently. Once the teams were more comfortable breaking and building their apps, we started planning for a collaborative workshop.

_Key: Build teams to facilitate self-learning._

## Planning for the training

We chalked out a weekend where we were able to get all the developers and trainers in the same location for a workshop. Apart from how long the training was we wanted to ensure that whatever we covered applied to all the teams and the applications that they were building. The initial versions of the applications were looked at, and assessed to understand testability, domain and maturity. 
Given the structure of the program and the heavy collaboration we wanted to ensure - we wanted tackle a well defined set of stories that would be small. Also, that the stories needed to cover enough ground into the Android technology space.

{% img left /images/piggy.jpeg 450 700 %}

_Key: Focus on short set of cohesive stories._

## Planning the stories

Another goal was to ensure that the teams met each other and were able to share skills across the different experience levels, we decided to pick one application that everyone would work on. We picked that application and setup the teams to have the code downloaded and ready to be shared. Using the same application gave us a clear direction to write stories for the workshop and also we could ensure consistency of learning across teams.

## Setup of the workshop and getting started

When we began we started with a quick review of the plan for the day. We allowed everyone to get the smae codebase on their machines and ensure that all of that works as expected on all of them. Once they all had the same code we paired people off in such a way that we had enough coverage within each pair about the knowledge of the shared code. Thus ensuring that each pair could get a quick headstart.

_Key: Start with a short icebreaker to ensure safe environment._

## Narrowing the scope of the exercise

The aspirations for the workshop were to learn building applications with location services, accelerometer, cross app integration and such. But after the review of the state of the applications it was realized that the application development process needed to focus more on the basics -like building the interfaces more cleanly, allowing for testing, allowing for change and refactoring and improving performance of the application. So a smaller more achievable set of stories were created that would address the above goals. The original aspirations - some of them can be learnt by looking at examples and some of them were postponed for a later workshop.

_Key: Plan for more than the time allocated, but expect to finish less and adapt._

## Development practices that help during a workshop

The workshop trainers and teams agreed on a few ground rules during the training. 

   -   Progressively work on adding features to the stories being built
   -   Pair during development and share the same code
   -   Present the code at every recess and discuss and critique code
   -   Understand the alternatives during each show and tell
   -   Take the best parts/patterns and share them as baseline for the next exercise
   -   After every recess - share code and switch pairs - to allow sharing experience
   -   No developer left behind - Help each other setup machines, checkin code, understand concepts and move on.

{% img left /images/android_pairing.jpeg 450 700 %}

_Key: Do frequent checks to ensure that everyone is engaged and keep pace of the session._

## Uncovering hard lessons.

The intent of this workshop was to bring all the teams together and collaborate. While doing so we wanted to understand some basic concepts in depth. Ensuring people collaborate on the same project, sharing code periodically and developing a feature in depth worked for us well. We were not able to cover as much as we had planned but were able to discover patterns, discuss them and apply them to our applications. Having the focus ensured the richness of learning. We were able to build complete UI, make it testable and learn how to tune its performance. We were able to learn how Android behaves and communicates with a service. 
Learning about the mobile experience - especially where we learnt how to allow the user to scroll through a bunch of listings with images without giving a feel of 'the app is still loading as it is scrolled' - was what we achieved by the end of the workshop. 

{% img left /images/android_showcase.jpeg 450 700 %}

Concepts we learnt:


   -   The Android toolkit, Junit and Robolectric are not always in sync. So beware of version compatibilities between these. We fixed the incompatibilities by using Android SDK platform version 17.
   -   Robolectric does some clever things to allow you to be able to mock the context for Android objects - so that you can test them.
   -   Load images and other streams of data using AsyncTask so that the app loads immediately
   -   Use an Adapter to delegate the tasks of loading all the listing data. This allows you to also change the implementation, point to a different endpoint, tune it for performance without changing how the UI has been laid out.
   -   The ViewHolder allows separation between domain objects and how they are wired to the data. The Adapter can delegate such tasks to the ViewHolder thus allowing to change the view as and when the experience needs to change it.


After the last session of pairing we were able to discuss and summarize what we learnt through a retrospective. Although we all agreed that we did not get everything done, the overall workshop was helpful in bringing everyone together and learning a few concepts in detail.

_Key: Working on some key concepts indepth helped the overall focus of the workshop._

Acknowledgement: This workshop and the program would not have been this awesome without Kris Gonzalez and Michael Wongwaisayawan

