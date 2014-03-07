class CreateKnowledgeBaseSectionablesLinks < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_links do |t|

      t.timestamps
    end
  end
end
