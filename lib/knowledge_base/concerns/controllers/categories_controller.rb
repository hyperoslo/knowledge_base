module KnowledgeBase
  module Concerns::Controllers::CategoriesController
    extend ActiveSupport::Concern

    included do
      def index
        @categories = Category.all
      end

      def show
        @category = Category.friendly.find params[:id]
      end
    end
  end
end
