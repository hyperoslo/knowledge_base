class CreateKnowledgeBaseSectionablesListItems < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_list_items do |t|
      t.string :title
      t.text :body
      t.integer :position
      t.references :list, index: true

      t.timestamps
    end
  end
end
