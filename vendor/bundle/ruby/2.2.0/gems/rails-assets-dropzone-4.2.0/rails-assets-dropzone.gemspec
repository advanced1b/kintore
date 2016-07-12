# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-dropzone/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-dropzone"
  spec.version       = RailsAssetsDropzone::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Dropzone is an easy to use drag'n'drop library. It supports image previews and shows nice progress bars."
  spec.summary       = "Dropzone is an easy to use drag'n'drop library. It supports image previews and shows nice progress bars."
  spec.homepage      = "http://www.dropzonejs.com/"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
