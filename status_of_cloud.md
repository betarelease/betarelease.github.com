---
layout: research
title: Status of the Cloud
---

I have been building large scale distributed applications since the last few years. I present some of the experience and learning as short abstracts.

## Building a complex workflow using 15 distributed applications.

A set of data centers needed a way to automate the process of provisioning maintenance. A number of aspects of every data center needed to be tracked - power consumption, network assignment, ip address allocation, inventory of hardware and software.
We built individual simple applications to address each of the above concerns.

These applications were also distributed across countries - locations included datacenters in US and Europe. These applications required to work independently performing the task they were designed for as well as work together to provide comprehensive reporting structure for business.

These applications did a pretty decent job of managing their own data within themselves. But when they needed to coordinate with each other there were limitations on how much data could be transferred over the network. Also not all the data needed to be transferred all the time - even though it was being transferred. We realized that this caused a number of bandwidth issues - forcing us to rethink the design. One of the problems of managing such high amounts of data was mitigated by adding a queue(RabbitMQ). Others needed the applications to reduce the amount of data being moved in the first place.

We also restricted these applications to run and manage data for a geography as that was more pertinent anyway. Once we restricted them to a geography only aggregated information for reporting was being moved across regions - thus limiting load.

Another application based on a workflow mechanism was built to ensure that the core application set behaved and served a typical business flow. This also allowed us to prepare the data before hand instead of sending larger sets of data than requested.


_Key learning: Large data stores that scale and replicate across ocean boundaries have latency as well as performance issues. Choose to build geography limited applications. Provide only an aggregated or summary view at the cross geography level._

References:

- [RubyKaigi 2010](http://rubykaigi.org) - [Slides](http://betarelease.github.io/images/rocking_the_enterprise.ppt)_

## A large scale data store for an election campaign

For the US bi-annual elections we built a large scale system. This system allowed campaigners all across the country to pick voters, mark them for campaigning and update the system asynchronously. This database consisted of a centrally located but sharded and replicated data store which served users' app across the country. Consistency was maintained using database api level checks to ensure multiple users do not campaign to the same voter.

As more and more data was being requested closer to the election data the distributed data store - using disk storage became the bottleneck. Taking more than a minute to retrieve data was not acceptable - and was a risk to adaptation. A cache was later added - which involved using an high end RAM that could support caching all the data to support the peak load. Adding hardware to support a distributed load helped us build a cache that was resilient and big enough to support the load.

_Key learning: Making data replicate for high availability, for high peak load requires that you build resilient hardware. In this case all of the data was moved from disk to a large (256GB) RAM cache to ensure no thrashing at high peak loads._

## Distributing and Scaling an application for the Cloud

Distributing a large user application to scale on the cloud is a tricky endeavour. A big distributed application demands resilience from distributed system issues like - network partitioning, geographic disasters, power availability as well as being able to serve traffic at all times. Given the distributed nature of users it demands that the application be able to serve users across the world - with low or minimal latency.

The monolith applicaiton was split in parts to make services that were distributed across the cloud. A number of cloud services were leveraged to perform stock activities. All of this was built on top of Amazon WebServices(AWS) cloud. AWS provided a number of the services which were already resilient and available.
But these did not come to us as free - because of the effort involved in redesign as well as the effort in ensuring consistency.

The applicaitons were deployed in one US region but were available across the world. To enhance the experience of the users and ensure near local behaviour we employed Content Delivery networks in all regions across the world. This reduced the load on the server for frequent static data from our applications. Another enhancement was adding a cache for our application specific data. This reduced calls to our data store as the cache became more and more full.

Replicating across zones(datacenters) ensured our application and its data was available even in case of failures in a particular zone. Although this replication across zone also has latency issues - these latency issues do not surface or affect the application since the data is cached as well as commmitted for each request. Committing after every request ensured that the following requests did not need to worry about data consistency.

_Key learning: Scaling applications does not necessarily need the applications to be distributed. Other mechanisms like data resilience, zone replication, Content Delivery Networks, Elastic Cache, User customized cache are all valid and great solutions before distributing application load._

References:

* [My article on moving to the cloud](http://www.thoughtworks.com/insights/blog/how-we-moved-cloud)
* [EbDeployer - Slides](https://www.slideshare.net/AmazonWebServices/aws-elastic-beanstalk-under-the-hood-dmg301-aws-reinvent-2013-28428616)
* [EbDeployer - Article](http://www.thoughtworks.com/insights/blog/ebdeployer-automate-your-deployments-aws-elastic-beanstalk)


## Recommendations for building new age distributed systems

After having built a few distributed solutions I have learnt and observed a few things.Here are some recommendations based on those learnings.
Application designers choose the cloud because of its promise of availability and resilience to partition.
Cloud systems are prone to being partitioned due to various reasons - Electrical, Weather, Network, Local network, T1 Network, Acts of God. Cloud applications though need to be designed so they are available, consistent as well as partition resistent.

Cloud services choose to compromise on the level of Consistency. The user built applications need to ensure that they provide a consistent experience to the end-users.

Another problem that applicatioin designers have to face is that of updating the applications while keeping them available all the time. This 24x7 expectation poses challenges on application delivery that require unique solutions. Mature cloud services like AWS provides mechanisms like CloudFormation, OpsWorks and ElasticBeanstalk to support such delivery constraints - by still maintaining availability.

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


Other References:

* [Interprocess Comms in Cloud: Pros, Cons of Microservices Architectures - Sudhir Tonse](https://www.youtube.com/watch?v=CriDUYtfrjs)
