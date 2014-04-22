module KnowledgeBase
  class Configuration
    attr_accessor :categories_path, :articles_path, :image_uploader

    def initialize
      @categories_path = 'categories'
      @articles_path   = 'articles'
      @image_uploader  = KnowledgeBase::ImageUploader
    end
  end
end
