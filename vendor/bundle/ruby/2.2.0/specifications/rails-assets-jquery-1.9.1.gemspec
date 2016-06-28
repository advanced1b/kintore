# -*- encoding: utf-8 -*-
# stub: rails-assets-jquery 1.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-jquery"
  s.version = "1.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2016-04-27"
  s.description = "jQuery component"
  s.homepage = "https://github.com/jquery/jquery-dist"
  s.licenses = ["MIT"]
  s.post_install_message = "This component doesn't define main assets in bower.json.\nPlease open new pull request in component's repository:\nhttps://github.com/jquery/jquery-dist"
  s.rubygems_version = "2.4.8"
  s.summary = "jQuery component"

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
