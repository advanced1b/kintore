# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-datepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-datepicker"
  spec.version       = RailsAssetsBootstrapDatepicker::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = ""
  spec.summary       = ""
  spec.homepage      = "https://github.com/eternicode/bootstrap-datepicker"
  spec.license       = "Apache-2.0"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", ">= 1.7.1"
  spec.add_dependency "rails-assets-bootstrap", ">= 2.0.4", "< 4.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
