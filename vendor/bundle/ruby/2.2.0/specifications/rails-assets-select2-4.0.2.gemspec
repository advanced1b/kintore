# -*- encoding: utf-8 -*-
# stub: rails-assets-select2 4.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-select2"
  s.version = "4.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2016-04-27"
  s.description = "Select2 is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results."
  s.homepage = "https://github.com/ivaynberg/select2"
  s.rubygems_version = "2.4.8"
  s.summary = "Select2 is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results."

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
