module KnowledgeBase
  class Sectionables::Image < ActiveRecord::Base
    mount_uploader :image, ImageUploader

    def to_s
      caption
    end
  end
end
