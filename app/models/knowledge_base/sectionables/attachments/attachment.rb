module KnowledgeBase::Sectionables::Attachments
  class Attachment < ActiveRecord::Base
    belongs_to :list, foreign_key: :attachment_list_id

    mount_uploader :file, KnowledgeBase::GenericFileUploader
  end
end
