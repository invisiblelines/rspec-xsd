require "nokogiri"

require "rspec/xsd/version"
require 'rspec/xsd/matcher'

module Rspec

  module Xsd

    def pass_validation(schema_path)
      Matcher.new(schema_path)
    end

  end

end
