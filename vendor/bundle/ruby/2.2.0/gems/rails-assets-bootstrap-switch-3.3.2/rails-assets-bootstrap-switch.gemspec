# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-switch/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-switch"
  spec.version       = RailsAssetsBootstrapSwitch::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Turn checkboxes and radio buttons in toggle switches."
  spec.summary       = "Turn checkboxes and radio buttons in toggle switches."
  spec.homepage      = "https://github.com/nostalgiaz/bootstrap-switch"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-bootstrap", ">= 2.3.2"
  spec.add_dependency "rails-assets-jquery", ">= 1.9.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
