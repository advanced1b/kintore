# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-tabdrop/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-tabdrop"
  spec.version       = RailsAssetsBootstrapTabdrop::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Very usefull script when your tabs do not fit in a single row. This script takes the not fitting tabs and makes a new dropdown tab. In the dropdown there are all the tabs that do not fit."
  spec.summary       = "Very usefull script when your tabs do not fit in a single row. This script takes the not fitting tabs and makes a new dropdown tab. In the dropdown there are all the tabs that do not fit."
  spec.homepage      = "https://github.com/nwhite89/bootstrap-tabdrop"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
