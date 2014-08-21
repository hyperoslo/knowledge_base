module KnowledgeBase
  class Configuration
    attr_accessor :categories_path, :articles_path, :image_uploader, :section_styles

    def initialize
      @categories_path = 'categories'
      @articles_path   = 'articles'
      @image_uploader  = KnowledgeBase::ImageUploader
      @section_styles = { }
    end
  end
end
