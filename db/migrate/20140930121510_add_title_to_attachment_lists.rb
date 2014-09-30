class AddTitleToAttachmentLists < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_attachments_lists, :title, :string
  end
end
