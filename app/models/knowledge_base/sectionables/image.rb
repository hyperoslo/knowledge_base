module KnowledgeBase
  class Sectionables::Image < ActiveRecord::Base
    mount_uploader :image, ImageUploader
  end
end
