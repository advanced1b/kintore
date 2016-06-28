# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-simple-line-icons/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-simple-line-icons"
  spec.version       = RailsAssetsSimpleLineIcons::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Simple Line Icons Bower Package"
  spec.summary       = "Simple Line Icons Bower Package"
  spec.homepage      = "https://github.com/thesabbir/simple-line-icons"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
