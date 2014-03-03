require_dependency "knowledge_base/application_controller"

module KnowledgeBase
  class CategoriesController < ApplicationController
    def index
      @categories = Category.all
    end

    def show
      @category = Category.friendly.find params[:id]
    end
  end
end
