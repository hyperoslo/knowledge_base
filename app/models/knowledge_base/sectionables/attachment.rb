module KnowledgeBase::Sectionables
  class Attachment < Sectionable
    belongs_to :attachment_list

    mount_uploader :file, KnowledgeBase::GenericFileUploader
  end
end
