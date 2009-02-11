# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jira4r}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["bwalding", "remi"]
  s.date = %q{2009-02-11}
  s.description = %q{Ruby library for controlling JIRA}
  s.email = %q{remi@remitaylor.com}
  s.files = ["NOTICE", "Rakefile", "VERSION.yml", "README.rdoc", "LICENSE", "lib/jira4r", "lib/jira4r/jira4r.rb", "lib/jira4r/jira_tool.rb", "lib/jira4r/v2", "lib/jira4r/v2/jiraServiceMappingRegistry.rb", "lib/jira4r/v2/JiraSoapServiceDriver.rb", "lib/jira4r/v2/jiraService.rb", "lib/jiraServiceMappingRegistry.rb", "lib/jira4r.rb", "lib/jiraService.rb", "examples/getProject.rb", "examples/addComment.rb", "examples/getGroup-https.rb", "examples/subtract-members", "examples/getProjects.rb", "examples/getGroup.rb", "examples/getNotificationScheme.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/remi/jira4r}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby library for controlling JIRA}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
