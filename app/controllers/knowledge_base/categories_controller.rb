require_dependency "knowledge_base/application_controller"

module KnowledgeBase
  class CategoriesController < ApplicationController
    include Concerns::Controllers::CategoriesController
  end
end
