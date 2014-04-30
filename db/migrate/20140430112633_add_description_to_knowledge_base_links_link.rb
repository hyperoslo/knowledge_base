class AddDescriptionToKnowledgeBaseLinksLink < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_links_links, :description, :text
  end
end
