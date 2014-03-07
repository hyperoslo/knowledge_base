class CreateKnowledgeBaseCategoryArticleAssociations < ActiveRecord::Migration
  def change
    create_table :knowledge_base_category_article_associations do |t|
      t.references :category
      t.references :article
      t.integer :position

      t.timestamps
    end

    add_index :knowledge_base_category_article_associations, [:category_id], name: 'index_knowledge_base_c_a_association_on_category_id'
    add_index :knowledge_base_category_article_associations, [:article_id], name: 'index_knowledge_base_c_a_association_on_article_id'

    remove_column :knowledge_base_category_article_associations, :category, :references
  end
end
