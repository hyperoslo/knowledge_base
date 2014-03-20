module KnowledgeBase::Sectionables
  class Text < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    def to_s
      "#{super} ##{id}: #{heading}"
    end
  end
end
