require_dependency "knowledge_base/application_controller"

module KnowledgeBase
  class ArticlesController < ApplicationController
    include Concerns::Controllers::ArticlesController
  end
end
