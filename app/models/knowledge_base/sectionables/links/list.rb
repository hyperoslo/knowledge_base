module KnowledgeBase::Sectionables::Links
  class List < ::KnowledgeBase::Sectionables::Sectionable
    has_many :links, dependent: :destroy, foreign_key: :links_id

    has_many :sections, as: :sectionable, dependent: :destroy

    accepts_nested_attributes_for :links, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{links.map(&:title).join(', ')}"
    end
  end
end
