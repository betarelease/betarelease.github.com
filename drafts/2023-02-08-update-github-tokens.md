---
layout: post
title: 'Updating github tokens - a not so secret document about secrets in github'
tags:
  - security
  - github
  - secrets
  - documentation
  - howto
image: images/secrets_and_variables.png
---

As it happens I am managing and organization on github which has been both easy and sometimes tricky. Many a times it has been tricky due to the way github decided to manage projects and project related settings.

Github provides a good way to start an opensource project by providing a set of services such a project needs - all in one place. Although there are gaps in the experience and documentation that we run into from time to time.

This is an attempt to document one such aspect that is not clearly spelled out.


We use a personal access token that is owned by a team member to ensure that this secret is owned and updated by this person and becomes a responsibility (a physical key instead of something that is controlled by an algorithm/machine).

The way to setup something like is documented by github under - [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

Although this shares how you 
