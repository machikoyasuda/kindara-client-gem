#!/usr/bin/env ruby
# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kindara/version"

Gem::Specification.new do |spec|
  spec.name          = "kindara"
  spec.version       = Kindara::VERSION
  spec.authors       = ["Machiko Yasuda"]
  spec.email         = ["machikoyasuda@gmail.com"]
  spec.summary       = %q{An API client for the kindara service}
  spec.description   = spec.summary
  spec.homepage      = "http://machikoyasuda.github.io/kindara"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = Dir["bin/**/*"].map! { |f| f.gsub(/bin\//, "") }
  spec.test_files    = Dir["test/**/*", "spec/**/*"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "http", "0.7.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "pry-doc", "~> 0.6"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
end
