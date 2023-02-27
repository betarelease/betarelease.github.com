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

Github provides a good way to start an opensource project by providing a set of services such a project needs - all in one place. Although, there are gaps in the user experience and documentation. A lot of this becomes more painful as you try to manage projects from within github. Github actions get even trickier to implement because of security and access protections and concerns.

I learnt the hard way how to do some of the things while using github and here is an attempt to write some of this as documentation so that it helps someone trying to get work done.

## Security for github actions

Github provides you two ways to be able to trigger and run the github actioins - using a personal access token or creating a github app. Now creating a github app seems to be what they would like to nudge people to do - but the steps involved are so many and the process so complex that we choose to stick with the access token.
If you are trying to leverage github actions to build a unique and useful workflow github apps would be the way to go. This is how the apps in the github marketplace are built.

Given that all we needed to do is run a set of available github actions under some user account, we choose to use the personal access tokens for our case.
Github actions are run on behalf of a user account on github. Any such  user account can be used to generate a personal access token and this token can be used as a secret for running github actions. This personal access token is secure because it is generated once and never shown on the screen. This token can be downloaded and used by the owner as they choose.
Github got this part right - the security and secrecy of this token should be left to the humans - and it relies on the human to make sure that this token is copied and used appropriately instead of doing some magic behind the scenes. If the owner loses the token or it is compromised github provides a UI to re-generate the token as well. Re-generation will cause the previous token to become invalid - another good security feature.


We use a personal access token that is owned by a team member to ensure that this secret is owned and updated by this person and becomes a responsibility (a physical key instead of something that is controlled by an algorithm/machine).

The way to setup something like is documented by github under - [Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

Although this shares how you 
