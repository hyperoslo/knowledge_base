class AddDescriptionToKnowledgeBaseAttachmentsAttachment < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_attachments_attachments, :description, :text
  end
end
