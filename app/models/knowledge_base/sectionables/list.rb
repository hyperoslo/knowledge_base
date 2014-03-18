module KnowledgeBase::Sectionables
  class List < Sectionable
    has_many :items, -> { order 'position ASC' }

    def to_s
      "#{super}: #{title}"
    end
  end
end
