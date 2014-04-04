# Knowledge Base

[![Code Climate](https://img.shields.io/codeclimate/github/hyperoslo/knowledge_base.svg)](https://codeclimate.com/github/hyperoslo/knowledge_base)
[![Build Status](https://img.shields.io/travis/hyperoslo/knowledge_base.svg)](https://travis-ci.org/hyperoslo/knowledge_base)

Knowledge Base is a bunch of models for Ruby on Rails that you probably need to build your own.

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

Configure your routes:

```ruby
# config/routes.rb

Rails.application.routes.draw do
  [...]

  mount KnowledgeBase::Engine, at: '/knowledge_base'
end
```

## Usage

Knowledge Base ships with a bunch of models that you probably need to build your own.

It has categories and articles to keep things organized, and each article consists of any number of sections.
Sections can be text, an image, a gallery of images, a video or just about anything you can imagine.

You can make your own sections, too, but we already ship with a whole bunch of them to make your life easier and you
should look at them before you do anything crazy.

Oh, and there's a rake task that you can use to seed your database for styling purposes:

```bash
$ rake knowledge_base:seed
```

## Configuration

If you don't want to save images to disk, you will want to configure CarrierWave:

```ruby
# config/initializers/carrierwave.rb
Carrierwave.configure do |config|
  storage :fog

  ...
end
```

## Administration

Knowledge Base comes with configuration for ActiveAdmin:

```bash
$ rails generate knowledge_base:active_admin
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
