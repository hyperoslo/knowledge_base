class RemoveCustomStyleFromNonSectionables < ActiveRecord::Migration
  def change
    remove_column :knowledge_base_sectionables_attachments_attachments, :custom_style, :string
    remove_column :knowledge_base_sectionables_gallery_images, :custom_style, :string
    remove_column :knowledge_base_sectionables_links_links, :custom_style, :string
    remove_column :knowledge_base_sectionables_list_items, :custom_style, :string
  end
end
