# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/xsd/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-xsd"
  spec.version       = Rspec::Xsd::VERSION
  spec.authors       = ["Kieran Johnson"]
  spec.email         = ["hello@invisiblelines.com"]
  spec.summary       = %q{Rspec matcher for ensuring XML validates against a given XSD}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rb-inotify'
  spec.add_development_dependency 'rb-fsevent'
end
