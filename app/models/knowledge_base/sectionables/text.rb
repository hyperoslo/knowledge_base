module KnowledgeBase::Sectionables
  class Text < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    def to_s
      "#{super}: #{heading}"
    end
  end
end
