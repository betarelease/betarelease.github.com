---
layout: post
title: ActiveResource is an oxymoron?
tags: [ruby, rails, activeresource, misuse, decoupling, REST]
---

One of the projects I worked on recently consisted of a number of applications interacting with each other over REST. These applications were written with an intention to obtain loose-coupling between them.

While writing more controller actions I noticed something that we were doing repeatedly - anytime one particular model changed in the domain it caused a ripple effect of making us change all the consumers in the application suite. These models were all exposed across applications by using ActiveResource. ActiveResource forced us to change every one of the model/model manifestations in the application.

The main intent of the decoupling effort was to help us change these applications almost independently of each other. These applications were supposed to only depend on the exposed interfaces. What ActiveResource did was forced us to tightly-couple them and a single change caused a ripple effect.

So my question is ‘Is ActiveResource an oxymoron?’ - Especially considering the fact that Active means really simple but strong coupling. Active does apply nicely to a database record and eases development by getting out of the way. But in case of lightly or ideally decoupled applications does the Active make sense? - Probably not. So if you want to expose objects and their behaviours over the wire maybe ActiveResource is not such a good idea.
