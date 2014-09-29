module KnowledgeBase
  class Sectionables::Gallery::Image < ActiveRecord::Base
    belongs_to :gallery

    mount_uploader :image, KnowledgeBase.config.gallery_image_uploader
  end
end
