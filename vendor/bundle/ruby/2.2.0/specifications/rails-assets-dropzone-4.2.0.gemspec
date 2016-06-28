# -*- encoding: utf-8 -*-
# stub: rails-assets-dropzone 4.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-dropzone"
  s.version = "4.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2016-04-27"
  s.description = "Dropzone is an easy to use drag'n'drop library. It supports image previews and shows nice progress bars."
  s.homepage = "http://www.dropzonejs.com/"
  s.rubygems_version = "2.4.8"
  s.summary = "Dropzone is an easy to use drag'n'drop library. It supports image previews and shows nice progress bars."

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
