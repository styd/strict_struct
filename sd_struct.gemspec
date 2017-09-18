# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sd_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "sd_struct"
  spec.version       = SDStruct::VERSION
  spec.authors       = ["Adrian Setyadi"]
  spec.email         = ["a.styd@yahoo.com"]
  spec.summary       = %q{Strict and Deep Struct}
  spec.description   = %q{An alternative to OpenStruct that more strict in assigning values and deeper in
consuming the passed Hash and transforming it back to Hash or JSON, equipped
with deep digging capabilities.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "> 4"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "pry", "~> 0.10.4"
end
