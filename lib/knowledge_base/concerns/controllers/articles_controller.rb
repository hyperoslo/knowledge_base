module KnowledgeBase
  module Concerns::Controllers::ArticlesController
    extend ActiveSupport::Concern

    included do
      before_action :set_category

      def index
        if @category
          @articles = @category.articles
        else
          @articles = Article.all
        end

        @articles = @articles.published

        @search   = @articles.search params[:q]
        @articles = @search.result.includes(:sections)
      end

      def show
        if @category
          @article = @category.articles
        else
          @article = Article.all
        end

        @article = @article.published.friendly.find params[:id]
      end

      private

      def set_category
        @category = Category.friendly.find params[:category_id] if params.has_key? :category_id
      end
    end
  end
end
