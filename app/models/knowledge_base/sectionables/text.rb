module KnowledgeBase::Sectionables
  class Text < Sectionable
    def to_s
      "#{super}: #{heading}"
    end
  end
end
