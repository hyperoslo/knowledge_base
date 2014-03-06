class CreateKnowledgeBaseSectionablesImages < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_images do |t|
      t.text :caption
      t.string :image

      t.timestamps
    end
  end
end
