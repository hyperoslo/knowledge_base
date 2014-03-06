class CreateKnowledgeBaseSections < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sections do |t|
      t.references :sectionable, polymorphic: true
      t.integer :position
      t.string :kind

      t.timestamps
    end

    add_index "knowledge_base_sections", ["sectionable_id", "sectionable_type"], name: "index_knowledge_base_sections_on_sectionable"
  end
end
