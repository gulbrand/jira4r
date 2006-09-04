#!/usr/bin/env ruby
#
#If running as part of distribution
require File.dirname(__FILE__) + '/../lib/jira4r/jira4r.rb'
#If using GEM install
#require 'jira4r/jira4r'

#This is for testing the SSL connection; you will need to install http-access2 to really see the SSL 
#certificate verification in action.

jira = Jira::JiraTool.new(2, "https://jira.atlassian.com")

jira.driver.options["protocol.http.ssl_config.verify_mode"] = nil

jira.login("soaptester", "soaptester")

jira.getGroup("montage-developers")