# Rspec::Xsd

Rspec matcher for ensuring XML validates against a given XSD

## Installation

Add this line to your application's Gemfile:

    group :test do
      gem 'rspec-xsd'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-xsd

## Usage

Require the gem in your spec_helper

    require 'rspec-xsd'

Now include the matcher in your specs

    RSpec.configure do |config|
      config.include Rspec::Xsd
    end

You can now check that XML validates against a given schema

    expect(xml).to pass_validation(/path/to/schema.xsd)

You can pass either a string or file as the XML document

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
