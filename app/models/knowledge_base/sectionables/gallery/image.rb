module KnowledgeBase
  class Sectionables::Gallery::Image < ActiveRecord::Base
    belongs_to :gallery

    mount_uploader :image, ImageUploader
  end
end
