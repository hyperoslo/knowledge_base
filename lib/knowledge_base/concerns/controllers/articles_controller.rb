module KnowledgeBase
  module Concerns::Controllers::ArticlesController
    extend ActiveSupport::Concern

    included do
      before_action :set_category

      def show
        @article = Article.published.friendly.find params[:id]
      end

      private

      def set_category
        @category = Category.friendly.find params[:category_id] if params.has_key? :category_id
      end
    end
  end
end
