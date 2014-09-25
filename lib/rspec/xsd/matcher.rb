module Rspec

  module Xsd

    class Matcher

      def initialize(schema_path)
        @schema_path = schema_path
        @schema      = File.basename(schema_path)
        @errors      = []
      end

      def matches?(xml)
        File.open(@schema_path) do |f|
          xsd     = Nokogiri::XML::Schema(f)
          @errors = xsd.validate(Nokogiri::XML(xml))
        end

        @errors.map! { |e| e }

        @errors.empty?
      end

      def failure_message
        "expected that XML would validate against #{@schema}\r\n\r\n#{@errors.join("\r\n")}"
      end

      def failure_message_when_negated
        "expected that XML would not validate against #{@schema}"
      end

      def description
        "validate against #{@schema}"
      end

    end

  end

end
