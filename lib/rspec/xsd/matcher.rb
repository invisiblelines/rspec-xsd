module RSpec

  module XSD

    class Matcher

      def initialize(schema, schema_name)
        @schema_name = schema_name
        case schema
        when Nokogiri::XML::Schema
          @xsd      = schema
          @schema_name = "In Memory Schema" if @schema_name.nil?
        else
          @schema_path = schema
          @schema_name = File.basename(@schema_path) if @schema_name.nil?
        end
        @errors      = []
      end

      def matches?(xml)
        if @xsd.nil?
          File.open(@schema_path) do |f|
            @xsd     = Nokogiri::XML::Schema(f)
          end
        end

        case xml
        when Nokogiri::XML::Document
          @errors = @xsd.validate(xml)
        else
          @errors = @xsd.validate(Nokogiri::XML(xml))
        end

        @errors.map! { |e| e }

        @errors.empty?
      end

      def failure_message
        "expected that XML would validate against #{@schema_name}\r\n\r\n#{@errors.join("\r\n")}"
      end

      def failure_message_when_negated
        "expected that XML would not validate against #{@schema_name}"
      end

      def description
        "validate against #{@schema_name}"
      end

    end

  end

end
