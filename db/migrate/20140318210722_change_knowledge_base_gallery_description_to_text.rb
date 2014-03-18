class ChangeKnowledgeBaseGalleryDescriptionToText < ActiveRecord::Migration
  def up
    change_column :knowledge_base_sectionables_galleries, :description, :text, limit: nil
  end

  def down
    change_column :knowledge_base_sectionables_galleries, :description, :string
  end
end
