module KnowledgeBase::Sectionables
  class Attachment < Sectionable
    has_many :sections, as: :sectionable, dependent: :destroy

    mount_uploader :file, KnowledgeBase::GenericFileUploader

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end
