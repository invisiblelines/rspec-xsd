# Rspec::Xsd

[![Build Status](https://travis-ci.org/invisiblelines/rspec-xsd.svg)](https://travis-ci.org/invisiblelines/rspec-xsd)
[![Code Climate](https://codeclimate.com/github/invisiblelines/rspec-xsd/badges/gpa.svg)](https://codeclimate.com/github/invisiblelines/rspec-xsd)

## Overview

Rspec matcher for ensuring XML validates against a given XSD

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'rspec-xsd'
end
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install rspec-xsd
```

## Usage

Require the gem in your spec_helper

```ruby
require 'rspec-xsd'
```

Now include the matcher in your specs

```ruby
RSpec.configure do |config|
  config.include Rspec::Xsd
end
```

You can validate either an XML string or a Nokogiri::XML::Document.

You can check that XML validates against a given schema by passing in a Nokogiri::XML::Schema object

```ruby
expect(xml).to pass_validation(xsd)
```

or by passing in the path to your XSD

```ruby
expect(xml).to pass_validation('/path/to/schema.xsd')
```

If you wish to give your XSD a more descriptive name you can pass this in as an optional argument

```ruby
expect(xml).to pass_validation('/path/to/schema.xsd', 'My Complex XSD')
```

You can pass either a string or file as the XML document

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
