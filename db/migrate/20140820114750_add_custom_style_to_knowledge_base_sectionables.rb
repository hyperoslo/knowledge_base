class AddCustomStyleToKnowledgeBaseSectionables < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_attachments_attachments, :custom_style, :string
    add_column :knowledge_base_sectionables_attachments_lists, :custom_style, :string

    add_column :knowledge_base_sectionables_galleries, :custom_style, :string
    add_column :knowledge_base_sectionables_gallery_images, :custom_style, :string

    add_column :knowledge_base_sectionables_images, :custom_style, :string

    add_column :knowledge_base_sectionables_links_links, :custom_style, :string
    add_column :knowledge_base_sectionables_links_lists, :custom_style, :string

    add_column :knowledge_base_sectionables_list_items, :custom_style, :string
    add_column :knowledge_base_sectionables_lists, :custom_style, :string

    add_column :knowledge_base_sectionables_texts, :custom_style, :string

    add_column :knowledge_base_sectionables_videos, :custom_style, :string
  end
end
