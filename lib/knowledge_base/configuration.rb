module KnowledgeBase
  class Configuration
    attr_accessor :categories_path, :articles_path, :text_image_uploader,
      :image_image_uploader, :gallery_image_uploader, :list_image_uploader, :section_styles

    def initialize
      @categories_path        = 'categories'
      @articles_path          = 'articles'
      @text_image_uploader    = KnowledgeBase::ImageUploader
      @image_image_uploader   = KnowledgeBase::ImageUploader
      @gallery_image_uploader = KnowledgeBase::ImageUploader
      @list_image_uploader    = KnowledgeBase::ImageUploader
      @section_styles         = { }
    end
  end
end
