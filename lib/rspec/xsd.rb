require "nokogiri"

require "rspec/xsd/version"
require 'rspec/xsd/matcher'

module Rspec

  module Xsd

    def pass_validation(schema, schema_name = nil)
      Matcher.new(schema, schema_name)
    end

  end

end
