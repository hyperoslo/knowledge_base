module KnowledgeBase::Sectionables
  class Gallery < Sectionable
    has_many :images, -> { order 'position DESC' },
      dependent: :destroy

    has_many :sections, dependent: :destroy

    accepts_nested_attributes_for :images, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end
