module KnowledgeBase::Sectionables
  class List < Sectionable
    has_many :items, -> { order 'position ASC' }

    accepts_nested_attributes_for :items, allow_destroy: true

    def to_s
      "#{super}: #{title}"
    end
  end
end
