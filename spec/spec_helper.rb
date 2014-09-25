require 'simplecov'

SimpleCov.start

require 'rspec'
require 'rspec/xsd'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Rspec::Xsd
end
