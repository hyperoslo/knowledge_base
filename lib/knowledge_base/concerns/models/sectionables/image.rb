module KnowledgeBase::Concerns::Models::Sectionables::Image
  extend ActiveSupport::Concern

  included do
    mount_uploader :image, KnowledgeBase.config.image_image_uploader

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{caption}"
    end
  end
end
