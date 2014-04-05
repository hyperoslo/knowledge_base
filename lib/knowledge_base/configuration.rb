module KnowledgeBase
  class Configuration
    attr_accessor :categories_path, :articles_path

    def initialize
      @categories_path = 'categories'
      @articles_path   = 'articles'
    end
  end
end
