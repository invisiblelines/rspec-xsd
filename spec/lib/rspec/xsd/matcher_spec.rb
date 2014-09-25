require 'spec_helper'

describe Rspec::Xsd::Matcher do
  let(:path)        { File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', '..', 'fixtures') }
  let(:schema_path) { File.join(path, 'schema.xsd') }

  let(:matcher) { Rspec::Xsd::Matcher.new(schema_path) }

  describe '#matches?' do
    let(:xml) { File.read(File.join(path, 'valid.xml')) }

    context 'with valid XML' do
      it 'returns true' do
        expect(matcher.matches?(xml)).to be(true)
      end
    end

    context 'with invalid XML' do
      let(:xml) { File.read(File.join(path, 'invalid.xml')) }

      it 'returns false' do
        expect(matcher.matches?(xml)).to be(false)
      end
    end
  end

  describe '#description' do
    it 'returns description' do
      expect(matcher.description).to eq('validate against schema.xsd')
    end
  end

  describe '#failure_message' do
    let(:xml) { File.read(File.join(path, 'invalid.xml')) }

    before do
      matcher.matches?(xml)
    end

    it 'returns message with validation errors' do
      expect(matcher.failure_message).to eq("expected that XML would validate against schema.xsd\r\n\r\nElement 'note': Missing child element(s). Expected is ( body ).")
    end
  end

  describe '#failure_message_when_negated' do
    it 'returns message' do
      expect(matcher.failure_message_when_negated).to eq('expected that XML would not validate against schema.xsd')
    end
  end
end
