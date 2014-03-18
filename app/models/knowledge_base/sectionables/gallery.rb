module KnowledgeBase::Sectionables
  class Gallery < Sectionable
    has_many :images, -> { order 'position DESC' }

    accepts_nested_attributes_for :images, allow_destroy: true

    def to_s
      "#{super}: #{title}"
    end
  end
end
