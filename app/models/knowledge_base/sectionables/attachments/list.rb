module KnowledgeBase::Sectionables::Attachments
  class List < Sectionable
    has_many :sections, as: :sectionable, dependent: :destroy

    has_many :attachments, dependent: :destroy, foreign_key: :attachment_list_id
    accepts_nested_attributes_for :attachments, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{attachments.map(&:title).join(', ')}"
    end
  end
end
