# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-jquery-validation/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-jquery-validation"
  spec.version       = RailsAssetsJqueryValidation::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Form validation made easy"
  spec.summary       = "Form validation made easy"
  spec.homepage      = "http://jqueryvalidation.org/"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", ">= 1.7.2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
