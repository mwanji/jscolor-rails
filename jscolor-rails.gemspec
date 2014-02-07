# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jscolor-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "jscolor-rails"
  gem.version       = Jscolor::Rails::VERSION
  gem.authors       = ["Moandji Ezana"]
  gem.email         = ["mwanji@gmail.com"]
  gem.summary       = "Integrates JSColor with Rails's asset pipeline"
  gem.homepage      = "https://github.com/mwanji/jscolor-rails"
  gem.license       = "MIT"

  gem.files         = Dir["{lib,vendor}/**/*"]
  gem.require_paths = ["lib"]
end
