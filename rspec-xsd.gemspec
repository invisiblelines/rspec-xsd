# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/xsd/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-xsd"
  spec.version       = RSpec::XSD::VERSION
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

  spec.add_dependency "rspec", '~> 3'
  spec.add_dependency "nokogiri", '~> 1.6'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_development_dependency 'simplecov', '~> 0.9.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.0'
  spec.add_development_dependency 'guard', '~> 2.6'
  spec.add_development_dependency 'guard-rspec', '~> 4.3'
  spec.add_development_dependency 'rb-inotify', '~> 0.9'
  spec.add_development_dependency 'rb-fsevent', '~> 0.9'
end
