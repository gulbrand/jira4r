#!/usr/bin/env ruby
require 'lib/jira4r/jira4r.rb'

jira = Jira::JiraTool.new(2, "http://jira.atlassian.com")

jira.login("soaptester", "soaptester")

puts "Auth Token = #{jira.token()}"

jira.getProjects().each { |project|
  puts project.name
}
