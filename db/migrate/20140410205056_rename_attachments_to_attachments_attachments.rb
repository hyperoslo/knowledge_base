class RenameAttachmentsToAttachmentsAttachments < ActiveRecord::Migration
  def change
    rename_table :knowledge_base_sectionables_attachments, :knowledge_base_sectionables_attachments_attachments
  end
end
