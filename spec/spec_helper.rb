if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'

  CodeClimate::TestReporter.start
else
  require 'simplecov'

  SimpleCov.start
end

require 'rspec'
require 'rspec/xsd'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include RSpec::XSD
end
