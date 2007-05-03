#!/usr/bin/env ruby
#
#If running as part of distribution
require File.dirname(__FILE__) + '/../lib/jira4r/jira4r.rb'
#If using GEM install
#require 'jira4r/jira4r'



jira = Jira::JiraTool.new(2, "http://test.jira.codehaus.org")
jira.login("admin", "password")

#So we have an existing user
if not jira.getUser("midget")
  jira.createUser("midget", `date`.strip, "Midget User", "midget@example.com")
end


