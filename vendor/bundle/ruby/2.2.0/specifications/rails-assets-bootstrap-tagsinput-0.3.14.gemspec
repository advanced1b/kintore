# -*- encoding: utf-8 -*-
# stub: rails-assets-bootstrap-tagsinput 0.3.14 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-bootstrap-tagsinput"
  s.version = "0.3.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2016-04-28"
  s.description = "jQuery plugin providing a Twitter Bootstrap user interface for managing tags."
  s.homepage = "https://github.com/TimSchlechter/bootstrap-tagsinput"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "jQuery plugin providing a Twitter Bootstrap user interface for managing tags."

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
