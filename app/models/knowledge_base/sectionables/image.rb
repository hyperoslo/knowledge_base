module KnowledgeBase::Sectionables
  class Image < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{caption}"
    end
  end
end
