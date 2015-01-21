# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'piggit/version'

Gem::Specification.new do |spec|
  spec.name          = "piggit"
  spec.version       = Piggit::VERSION
  spec.authors       = ["Shay Davidson"]
  spec.email         = ["shay.h.davidson@gmail.com"]
  spec.summary       = "Version control for your PostgreSQL DB state."
  spec.description   = "A small git-like utility which grants you local version control for your PostgreSQL DB schema and data."
  spec.homepage      = "https://github.com/iic-ninjas/piggit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
