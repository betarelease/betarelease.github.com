---
layout: post
title: top ten reasons why maven sucks
tags: [maven, ant, rake, agile, team, people, apache, nsfw]
---

\10. maven corrupts - software, people.

\9. maven uses an archetype (appfuse) and expects that all your projects
look like the apache projects - even those that are not webservers.

\8. maven has only four build stages - compile, test, install, package -
if you have a requirement to automate performance testing you are out of
luck

\7. maven requires you to have a standard directory structure that is 5
subdirectories deep - regardless of the fact that your project only has
10 java files.

\6. tasks that are not implemented in maven have to be implemented in
ant and need to be integrated with maven - a big nightmare.

\5. maven encourages you to integrate via binaries - thus making
continuous integration difficult

\4. every time maven builds it connects to the internet (to
verify/update dependencies) - building your project without the internet
is extremely hard.

\3. maven manages the projects and subprojects implicitly (since there
is convention and then there are overrides) - it makes debugging your
build impossible.

\2. maven manages the project dependencies in its own repository -
called the .m2 repository - which is not part of your application folder
- thus making it impossible to track and package development
environments.

\1. maven always downloads the whole internet - to keep its dependencies
up to date - even though you don’t want to.
