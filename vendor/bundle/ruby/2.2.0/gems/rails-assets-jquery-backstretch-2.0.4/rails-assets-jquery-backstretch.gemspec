# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-jquery-backstretch/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-jquery-backstretch"
  spec.version       = RailsAssetsJqueryBackstretch::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A simple jQuery plugin that allows you to add a dynamically-resized, slideshow-capable background image to any page or element."
  spec.summary       = "A simple jQuery plugin that allows you to add a dynamically-resized, slideshow-capable background image to any page or element."
  spec.homepage      = "http://srobbin.com/jquery-plugins/backstretch"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", "~> 1.9.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
