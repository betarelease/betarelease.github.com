---
layout: post
title: MySQL Triggers
tags: [mysql, triggers, databases, SQL]
---

MySQL added triggers to its portfolio in version 5.0. I am thinking this was a lot of database gurus have been wanting for so long. A little primer on how to use MySQL trigger follows : Trigger 101 follows - so detune if you are a guru already.

Your database can perform a decent number of arithmetic and logical operations on your data. All this can be done by using the features of your database engine and without writing any code. One of the features I used in a recent write up is triggers. I have some tables - models with relationships. When these models change I want to effect some calculations and update relevant tables.This can all be done through triggers.

Lets take it up with an example

{% highlight mysql linenos %}

create table voters (name varchar (30), id integer, ward varchar (30),
gender integer);\
create table voter\_ward (ward varchar (30), male integer, female
integer);

— adding trigger to update voter count by gender automatically\
create trigger TOTAL AFTER UPDATE on voters for each row\
BEGIN\
update voter\_ward set male = (select sum (voters.gender) \
from voters where ward = new.ward) where ward = new.ward;

update voter\_ward set female = (select sum (voters.gender) \
from voters where ward = new.ward) where ward = new.ward;\
END;\
//\
delimiter ;

{% endhighlight %}

This will add a trigger to your voters table and update the voter\_ward table with the genderwise count. As you can imagine you can add a lot of simple logic into these triggers to build simple and efficient update based on such events. Another thing that should be apparent is being cautious about using these triggers every chance you get to use it - They will bring the database performance down with these frequent queries.
