module KnowledgeBase::Sectionables
  class Links < Sectionable
    has_many :links

    accepts_nested_attributes_for :links, allow_destroy: true

    def to_s
      "#{super}: #{links.map(&:title).join(', ')}"
    end
  end
end
