#! /usr/bin/ruby

require 'time'
t = Time.now

draft_name = ARGV[0]
date = "#{t.year}-#{t.month}-#{t.day}"
post_name = "#{date}-#{draft_name}"

system "cp _drafts/#{draft_name} _posts/#{post_name}"