class RenameLinksToLinksLists < ActiveRecord::Migration
  def change
    rename_table :knowledge_base_sectionables_links, :knowledge_base_sectionables_links_lists
  end
end
