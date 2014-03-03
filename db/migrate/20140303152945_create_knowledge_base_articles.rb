class CreateKnowledgeBaseArticles < ActiveRecord::Migration
  def change
    create_table :knowledge_base_articles do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.references :category, index: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
