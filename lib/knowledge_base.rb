require "knowledge_base/engine"
require "knowledge_base/configuration"
require "carrierwave"

module KnowledgeBase
  class << self
    def configure
      yield config
    end

    def config
      @config ||= KnowledgeBase::Configuration.new
    end
  end
end
