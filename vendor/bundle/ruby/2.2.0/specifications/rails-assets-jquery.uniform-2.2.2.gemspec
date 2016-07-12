# -*- encoding: utf-8 -*-
# stub: rails-assets-jquery.uniform 2.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-jquery.uniform"
  s.version = "2.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2016-05-06"
  s.description = "A jQuery plugin to make your form controls look how you want them to. Now with HTML-5 attributes!"
  s.homepage = "http://opensource.audith.org/uniform"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "A jQuery plugin to make your form controls look how you want them to. Now with HTML-5 attributes!"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-assets-jquery>, ["< 2", ">= 1.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rails-assets-jquery>, ["< 2", ">= 1.6"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails-assets-jquery>, ["< 2", ">= 1.6"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
