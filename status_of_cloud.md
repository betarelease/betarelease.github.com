---
layout: research
title: Status of the Cloud
---

# Building Distributed applications

I have been building large scale distributed applications since the last few years and would like to illustrate a few examples and learnings.

## Building a large scale datacenter management application

This project largely described as datacenter automation dealt with coordinating with different business sides of a data center company. It incorporated all those data sources to provide a comprehensive online datacenter management solution. The data for such a large scale application came from different sources - inventory management, ip address allocation, billing. All this needed to work in different countries and report needs to be generated across regions.

Practical solutions built were hard to scale across regions. End result being multiple applications were built specific for each purpose. These applications were then orchestrated with a thin layer workflow coordination system to allow flow of data for adding servers as well as generating reports across them.


_Key learning: Large data stores that scale and replicate across ocean boundaries have latency as well as performance issues. Choose to build geography limited applications. Provide only an aggregated or summary view at the cross geography level._

## Building a voter campaigning system

For the US bi-annual elections we built a sharded large scale application system. This system allowed campaigners all across the country to pick voters, mark them for campaigning and update the system synchronously.This database consisted for a centrally located but sharded and replicated data store which served users' app across the country. Consistency was maintained using database api level checks to ensure multiple users do not campaign to the same voter.

_Key learning: Making data replicate for high availability, for high peak load requires that you build resilient hardware. In this case all of the data was moved from disk to a large (256GB) RAM cache to ensure no thrashing at high peak loads._

## Converting a monolithic app to a large scale distributed application

Distributing a large user application to scale on the cloud is a tricky endeavour. A big distributed application demands resilience from distributed system issues like - network partitioning, geographic disasters, power availability as well as being able to serve traffic at all times. Given the distributed nature of users it demands that the application be able to serve users across the world - with low or minimal latency.

We need to split this architecture from being a monolith and divide it into parts that can be managed and scaled - depending on their purpose. Divide these into services that can be thrown on the cloud and connected together. These services need to function independently as well as together. These services each have their own ways of being built and deployed.

_Key learning: Scaling applications does not necessarily need the applications to be distributed. Other mechanisms like data resilience, zone replication, Content Delivery Networks, Elastic Cache, User customized cache are all valid and great solutions before distributing application load._


## Building for the Cloud

Cloud can be partitioned at any time - due to various reasons. Electrical, Weather, Network, Local network, T1 Network, Acts of God.
Cloud applications though need to be designed so they are available, consistent as well as partition resistent.

Cloud would like to be consistent at all times - but that is a wish. Cloud architectures usually provide very high availability and Partition Resistance while compromising on the level of Consistency. The user built applications need to ensure that they provide a consistent experience to the end-users.

Another problem is people need to update applications all the time.

* How does a cloud service ensure high availability?
Data centers use high level of virtualization to provision compute instances and provide high availability. Virtualization allows the data centers to provide an abstraction of hardware thus allowing them to replace and fix broken hardware from time to time. Since Virtual Machines(VMs) can be provisioned for different operating systems a lot of downtime can be saved by pre-provisioning and hot swapping them even in case of hardware failures.

  * Benefits of virtualization:
    * Computer is a resource
    * Bringing one up is a matter of time and is very reproducible
    * Running large scale programs means divide and conquer - map/reduce
    * Running large scale data - streaming mechanisms and finding local optimas for your optimization/analysis problems

  * Ensuring availability :
    * Replicating to many datacenters - or across geographies
    * Replicating periodically - periodicity determined by load

* How to maintain consistency?

* How to report consistency?
  * all systems need to report success
  * what to do in case of partial success
  * what is good enough success

* How do you do continuous delivery in those conditions?
  * Ensuring zero downtime for production systems - keeping applications alive all the time
    * Deploying duplicate instance for upgrading applications
    * Deploying with maintaining data consistency
    * Deploying with redundancy
  * Throwing away compute instances
    * Easier/Less cumbersome than updating in place
    * Real problems - how to update the application seamlessly
    * Switching instances of old/new application binaries
  * Balancing load
   * Best effort load balancing
   * Scaling based on load balancing loads

# More learnings go here:
1/3 of all internet traffic in US is Netflix


References:

* [Interprocess Comms in Cloud: Pros, Cons of Microservices Architectures - Sudhir Tonse](https://www.youtube.com/watch?v=CriDUYtfrjs)
- [aws re:invent 2013 - EbDeployer](https://www.slideshare.net/AmazonWebServices/aws-elastic-beanstalk-under-the-hood-dmg301-aws-reinvent-2013-28428616) - [Article](http://www.thoughtworks.com/insights/blog/ebdeployer-automate-your-deployments-aws-elastic-beanstalk)
- [Agile and Beyond 2012](http://agileandbeyond.org) - [Slides](http://betarelease.github.io/build_feedback/slides.html)
- [Agile Eastern Europe 2010](http://agileee.org).
- [RubyKaigi 2010](http://rubykaigi.org) - [Slides](http://betarelease.github.io/images/rocking_the_enterprise.ppt)
- [Agile 2009](http://agileconf.com)

* [My Insights Article1]
hystrix and prana from netflix
