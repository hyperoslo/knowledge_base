module KnowledgeBase::Concerns::Models::Sectionables::Gallery::Image
  extend ActiveSupport::Concern

  included do
    belongs_to :gallery

    mount_uploader :image, KnowledgeBase.config.gallery_image_uploader
  end
end
