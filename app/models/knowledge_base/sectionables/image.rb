module KnowledgeBase::Sectionables
  class Image < Sectionable
    mount_uploader :image, KnowledgeBase.config.image_uploader

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{caption}"
    end
  end
end
