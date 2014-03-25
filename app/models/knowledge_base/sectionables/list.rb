module KnowledgeBase::Sectionables
  class List < Sectionable
    mount_uploader :image, KnowledgeBase::ImageUploader

    has_many :items, -> { order 'position ASC' }

    accepts_nested_attributes_for :items, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end
