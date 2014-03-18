module KnowledgeBase::Sectionables
  class Gallery < Sectionable
    has_many :images, -> { order 'position DESC' }

    def to_s
      "#{super}: #{title}"
    end
  end
end
