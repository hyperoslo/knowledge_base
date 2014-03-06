class PolymorphizeSections < ActiveRecord::Migration
  def change
    remove_column :knowledge_base_sections, :article_id, :integer

    change_table :knowledge_base_sections do |t|
      t.references :container, polymorphic: true
    end

    add_index :knowledge_base_sections, [:container_id, :container_type], name: "index_knowledge_base_sections_on_container"
  end
end
