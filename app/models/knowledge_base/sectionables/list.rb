module KnowledgeBase::Sectionables
  class List < Sectionable
    mount_uploader :image, KnowledgeBase.config.list_image_uploader

    has_many :items, -> { order 'position ASC' }

    has_many :sections, as: :sectionable, dependent: :destroy

    accepts_nested_attributes_for :items, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end
