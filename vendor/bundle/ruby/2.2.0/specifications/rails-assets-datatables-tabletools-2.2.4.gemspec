# -*- encoding: utf-8 -*-
# stub: rails-assets-datatables-tabletools 2.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-datatables-tabletools"
  s.version = "2.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2015-04-01"
  s.description = ""
  s.homepage = "https://github.com/DataTables/TableTools"
  s.rubygems_version = "2.4.8"
  s.summary = ""

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-assets-jquery>, [">= 1.7.0"])
      s.add_runtime_dependency(%q<rails-assets-datatables>, [">= 1.9.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rails-assets-jquery>, [">= 1.7.0"])
      s.add_dependency(%q<rails-assets-datatables>, [">= 1.9.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails-assets-jquery>, [">= 1.7.0"])
    s.add_dependency(%q<rails-assets-datatables>, [">= 1.9.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end