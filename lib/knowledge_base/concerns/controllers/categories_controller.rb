module KnowledgeBase
  module Concerns::Controllers::CategoriesController
    extend ActiveSupport::Concern

    included do
      def index
        @categories = Category.published
      end

      def show
        @category = Category.published.friendly.find params[:id]
      end
    end
  end
end
