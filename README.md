# Knowledge Base

[![Code Climate](https://codeclimate.com/github/hyperoslo/knowledge_base.png)](https://codeclimate.com/github/hyperoslo/knowledge_base)
[![Build Status](https://travis-ci.org/hyperoslo/knowledge_base.png)](https://travis-ci.org/hyperoslo/knowledge_base)

Knowledge Base makes it really easy to, well, make a knowledge base. It has categories, articles and lots of things you can
put in them.

## Installation

Add this line to your application's Gemfile:

    gem 'knowledge_base'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knowledge_base

Install the migrations:

    rake knowledge_base:install:migrations
    
Run the migrations:

    rake db:migrate

## Usage


## Configuration

Configure your knowledge base in an initializer:

```ruby
KnowledgeBase.configure do |config|
  config.storage = :file # Storage method for uploaded files. See CarrierWave for details.
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Hyper made this. We're a digital communications agency with a passion for good code,
and if you're using this library we probably want to hire you.


## License

Knowledge Base is available under the MIT license. See the LICENSE file for more info.
