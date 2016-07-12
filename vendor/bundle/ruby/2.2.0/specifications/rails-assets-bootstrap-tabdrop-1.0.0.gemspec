# -*- encoding: utf-8 -*-
# stub: rails-assets-bootstrap-tabdrop 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-bootstrap-tabdrop"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2015-02-23"
  s.description = "Very usefull script when your tabs do not fit in a single row. This script takes the not fitting tabs and makes a new dropdown tab. In the dropdown there are all the tabs that do not fit."
  s.homepage = "https://github.com/nwhite89/bootstrap-tabdrop"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Very usefull script when your tabs do not fit in a single row. This script takes the not fitting tabs and makes a new dropdown tab. In the dropdown there are all the tabs that do not fit."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
