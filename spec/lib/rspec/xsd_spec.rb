require 'spec_helper'

describe RSpec::XSD do
  let(:path)        { File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'fixtures') }
  let(:schema_path) { File.join(path, 'schema.xsd') }

  describe '#pass_validation' do
    context 'with valid XML' do
      let(:xml) { File.read(File.join(path, 'valid.xml')) }

      it 'validates given XML against the given XSD' do
        expect(xml).to pass_validation(schema_path)
      end
    end

    context 'with invalid XML' do
      let(:xml) { File.read(File.join(path, 'invalid.xml')) }

      it 'confirms invalid XML does not validate' do
        expect(xml).not_to pass_validation(schema_path)
      end
    end
  end

end
