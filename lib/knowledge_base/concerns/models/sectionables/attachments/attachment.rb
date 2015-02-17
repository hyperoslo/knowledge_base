module KnowledgeBase::Concerns::Models::Sectionables::Attachments::Attachment
  extend ActiveSupport::Concern

  included do
    belongs_to :list, foreign_key: :attachment_list_id

    mount_uploader :file, KnowledgeBase::GenericFileUploader

    validates :title, :file, :list, presence: true
  end
end
