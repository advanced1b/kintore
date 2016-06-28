# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-jquery.uniform/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-jquery.uniform"
  spec.version       = RailsAssetsJqueryUniform::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A jQuery plugin to make your form controls look how you want them to. Now with HTML-5 attributes!"
  spec.summary       = "A jQuery plugin to make your form controls look how you want them to. Now with HTML-5 attributes!"
  spec.homepage      = "http://opensource.audith.org/uniform"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", ">= 1.6", "< 2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
