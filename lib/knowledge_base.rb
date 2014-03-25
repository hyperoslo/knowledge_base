require "knowledge_base/engine"
require "knowledge_base/configuration"
require "knowledge_base/concerns"
require "carrierwave"
require "embeddable"

module KnowledgeBase
  class << self
    def configure
      yield config
    end

    def config
      @config ||= KnowledgeBase::Configuration.new
    end

    def reset
      @config = nil
    end
  end
end
