class AddAttachmentListReferenceToKnowledgeBaseSectionablesAttachments < ActiveRecord::Migration
  def change
    add_reference :knowledge_base_sectionables_attachments, :attachment_list

    add_index :knowledge_base_sectionables_attachments, :attachment_list_id,
      name: 'index_knowledge_base_attachments_on_attachment_list_id'
  end
end
