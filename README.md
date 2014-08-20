# Knowledge Base

[![Gem Version](https://img.shields.io/gem/v/knowledge_base.svg)](https://rubygems.org/gems/knowledge_base)
[![Build Status](https://img.shields.io/travis/hyperoslo/knowledge_base.svg)](https://travis-ci.org/hyperoslo/knowledge_base)
[![Dependency Status](https://img.shields.io/gemnasium/hyperoslo/knowledge_base.svg)](https://gemnasium.com/hyperoslo/knowledge_base)
[![Code Climate](https://img.shields.io/codeclimate/github/hyperoslo/knowledge_base.svg)](https://codeclimate.com/github/hyperoslo/knowledge_base)
[![Coverage Status](https://img.shields.io/coveralls/hyperoslo/knowledge_base.svg)](https://coveralls.io/r/hyperoslo/knowledge_base)

Knowledge Base is a bunch of models for Ruby on Rails that you probably need to build your own.

## Installation

Add this line to your application's Gemfile:

    gem 'knowledge_base'

... and then execute:

    $ bundle

Install and run the migrations:

    $ rake knowledge_base:install:migrations
    $ rake db:migrate

Configure your routes:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  [...]

  mount KnowledgeBase::Engine, at: '/knowledge_base'
end
```

That's it, you're done!

## Usage

At its core, Knowledge Base is categories and articles. Its categories can have many articles,
and each article can be in many categories.

Articles consist of sections. Sections can be text, images, links, attachments and just about
anything else you can imagine. Knowledge Base ships with over a dozen kinds of sections already,
and you can check them out in `app/models/knowledge_base/sectionables/`.

### Seeds

Development seeds are a nice way to populate your database with dummy content for styling
and presentation purposes. You seed your database with categories and articles with a rake task:

```bash
$ rake knowledge_base:seed
```

... or include them in your own development seeds:

```ruby
# db/seeds/development.rb
require 'knowledge_base/seeds'
```

## Configuration

### CarrierWave

Some sections have images or files in them, and Knowledge Base uses [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)
to upload them. It defaults to saving images to disk, but if you'd rather save them to the cloud you'll
have to configure it:

```ruby
# config/initializers/carrierwave.rb
CarrierWave.configure do |config|
  storage :fog
end
```

### ActiveAdmin

Knowledge Base ships with pretty good configuration for [ActiveAdmin](activeadmin.info), and you
should probably install it instead of writing your own:

```bash
$ rails generate knowledge_base:active_admin
```

### Custom styles

Oftentimes we notice the need for sectionables of the same type with different
styles. E.g. some text sectionables with black text and other text sectionables
with orange text. It just so happens that you can add custom styles to your
sectionables through the configuration. Considering the scenario with black and
orange text sectionables, you would write something like this:

```ruby
KnowledgeBase.configure do |config|
  config.custom_styles = {
    "KnowledgeBase::Sectionables::Text" => [ :black, :orange ]
  }
end
```

Now each text sectionable can be given an orange or a black style, which can be
accessed like any other attribute on the sectionable. Using this attribute, you
could give the element a CSS class to achieve the correct styling:

```
<div class="text <%= @text.custom_style %>">
  <%= simple_format @text.body %>
</div>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Hyper made this. We're a digital communications agency with a passion for good code,
and if you're using Knowledge Base we probably want to hire you.

## License

Knowledge Base is available under the MIT license. See the LICENSE file for more info.
