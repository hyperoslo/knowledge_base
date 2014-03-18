class DefaultPositionFields < ActiveRecord::Migration
  def change
    change_column :knowledge_base_categories, :position, :integer, default: 0
    change_column :knowledge_base_category_article_associations, :position, :integer, default: 0
    change_column :knowledge_base_sections, :position, :integer, default: 0
    change_column :knowledge_base_sectionables_gallery_images, :position, :integer, default: 0
    change_column :knowledge_base_sectionables_links_links, :position, :integer, default: 0
    change_column :knowledge_base_sectionables_list_items, :position, :integer, default: 0
  end
end
