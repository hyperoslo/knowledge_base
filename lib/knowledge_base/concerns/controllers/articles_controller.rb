module KnowledgeBase
  module Concerns::Controllers::ArticlesController
    extend ActiveSupport::Concern

    included do
      def show
        @article = Article.friendly.find params[:id]
      end
    end
  end
end
