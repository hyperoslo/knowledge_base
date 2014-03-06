class CreateKnowledgeBaseSectionablesGalleries < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_galleries do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
