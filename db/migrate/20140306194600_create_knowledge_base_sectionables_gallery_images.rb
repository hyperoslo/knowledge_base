class CreateKnowledgeBaseSectionablesGalleryImages < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_gallery_images do |t|
      t.string :caption
      t.string :image
      t.integer :position
      t.references :gallery, index: true

      t.timestamps
    end
  end
end
