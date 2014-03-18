module KnowledgeBase::Sectionables
  class Links < Sectionable
    has_many :links

    def to_s
      "#{super}: #{links.map(&:title).join(', ')}"
    end
  end
end
