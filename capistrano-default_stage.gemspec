# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/default_stage/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-default_stage"
  spec.version       = Capistrano::DefaultStage::VERSION
  spec.authors       = ["Josh Leder"]
  spec.email         = ["slushie@gmail.com"]

  spec.summary       = %q{Set a default stage in Capistrano 3}
  spec.description   = %q{Set a default stage in Capistrano 3}
  spec.homepage      = "https://github.com/slushie/capistrano-default_stage"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
