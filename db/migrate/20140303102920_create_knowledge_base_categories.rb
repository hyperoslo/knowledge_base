class CreateKnowledgeBaseCategories < ActiveRecord::Migration
  def change
    create_table :knowledge_base_categories do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.boolean :published
      t.references :category, index: true
      t.integer :position

      t.timestamps
    end

    add_index :knowledge_base_categories, :slug, unique: true
  end
end
