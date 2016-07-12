# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-hover-dropdown/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-hover-dropdown"
  spec.version       = RailsAssetsBootstrapHoverDropdown::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "An unofficial Bootstrap plugin to enable Bootstrap dropdowns to activate on hover and provide a nice user experience."
  spec.summary       = "An unofficial Bootstrap plugin to enable Bootstrap dropdowns to activate on hover and provide a nice user experience."
  spec.homepage      = "https://github.com/CWSpear/bootstrap-hover-dropdown"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-bootstrap", ">= 3.0.0", "< 4"
  spec.add_dependency "rails-assets-jquery", ">= 1.9.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
