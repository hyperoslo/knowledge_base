module KnowledgeBase
  module Concerns::Controllers::ArticlesController
    extend ActiveSupport::Concern

    included do
      before_action :set_category

      def index
        if @category
          scope = @category.articles
        else
          scope = Article.all
        end

        scope = scope.published

        @search   = scope.search params[:q]
        @articles = @search.result.includes(:sections)
      end

      def show
        if @category
          scope = @category.articles
        else
          scope = Article.all
        end

        @article = scope.published.friendly.find params[:id]
      end

      private

      def set_category
        @category = Category.friendly.find params[:category_id] if params.has_key? :category_id
      end
    end
  end
end
