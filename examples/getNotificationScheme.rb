#!/usr/bin/env ruby
#
#If running as part of distribution
require File.dirname(__FILE__) + '/../lib/jira4r/jira4r.rb'
#If using GEM install
#require 'jira4r/jira4r'



jira = Jira::JiraTool.new(2, "http://jira.atlassian.com")

jira.login("soaptester", "soaptester")

puts jira.getNotificationScheme("Default Notification Scheme").inspect