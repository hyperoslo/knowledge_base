require 'friendly_id'
require 'publishable'

module KnowledgeBase
  class Engine < ::Rails::Engine
    isolate_namespace KnowledgeBase

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
