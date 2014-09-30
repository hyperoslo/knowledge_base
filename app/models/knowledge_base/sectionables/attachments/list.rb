module KnowledgeBase::Sectionables::Attachments
  class List < ::KnowledgeBase::Sectionables::Sectionable
    has_many :sections, as: :sectionable, dependent: :destroy

    has_many :attachments, dependent: :destroy, inverse_of: :list,
      foreign_key: :attachment_list_id
    accepts_nested_attributes_for :attachments, allow_destroy: true

    def to_s
      title
    end
  end
end
