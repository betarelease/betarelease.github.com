---
layout: post
title: Bundler with vendorized gems 
tags: [bundler, ruby, rails, gems, rubygems, vendor, dependencies, ack, cut, rake, gemset, rvm]
---

Bundler is a tool for managing installed libraries on a ruby project. It comes bundled with rails 3 but can be used standalone without rails. 
Bundler tries to fix issues with having to manage your gems(and their related dependencies and versions) in a clean way. In doing so it allows you to work on your application and not have to worry about dependencies sucking the life out of your releases.

Off late I have been working on an application that vendorizes its gems and packages them while shipping the application. Since this application is also been built in the traditional way(rails 2) I was looking to use bundler with it to do the vendorization. Turns out bundler supports such a use case.

For a packaged application bundler allows you to freeze the gems and unpack them in the 
location of your choosing. This path can then be added to your application to load all the 
frozen gems. The following command with the path set to the location you would like to unpack your gems allows you to use bundler to vendorize gems.

{% highlight ruby%}
   bundle install --path vendor/bundle

{% endhighlight %}

You can then add these gems to your application as you would for vendorized gems.


h3. Bundler with rvm and gemsets

One of the popular opinions is to just use bundler and ditch gemsets. I tend to use both gemsets and bundler to my advantage. This helps especially when I am working on multiple applications and when I am not online all the time. I ensure that my bundle is upto date before I go offline and then can work on my apps when I am offline by switching gemsets. Sometimes I tend to have multiple gemsets built when I am working on changing or experimenting with gems.

That way I do not have conflicts when I am using one version of rake for a ruby 1.8.7 application while my other ruby 1.9.3 application uses the latest and greatest rake gem.

h3. Cleaning your gems before using bundler

Bundler allows you to install and update a set of gems based on the Gemfile. But it is not obvious how you would set up an application that has local gems installed to start using bundler. To start you need to delete all gems from the current gems. Having a clean workspace allows bundler to install gems from Gemfile without conflicts and can prevent a lot of confusion when multiple versions of a gem being installed side by side.

Here is a snippet that will allow you to clean your gemset.

{% highlight ruby%}

   Delete all gems from gemset

   gem list | cut -d ' ' -f1 | xargs gem uninstall -aIx

{% endhighlight %}

In most cases this will work. But rake seems to be installed as part of the global gemset. So the above command will delete all gems till rake and then abort. To skip deleting rake change the above script as follows

{% highlight ruby %}

   gem list | cut -d ' ' -f1 | ack -v 'rake' | xargs gem uninstall -aIx


{% endhighlight %}

(ack is further reading if you don't already know what it does.)

