module KnowledgeBase::Sectionables
  class Links < Sectionable
    has_many :links, dependent: :destroy

    has_many :sections, dependent: :destroy

    accepts_nested_attributes_for :links, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{links.map(&:title).join(', ')}"
    end
  end
end
