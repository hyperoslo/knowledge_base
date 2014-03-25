module KnowledgeBase::Sectionables
  class Text < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    has_many :sections, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{heading}"
    end
  end
end
