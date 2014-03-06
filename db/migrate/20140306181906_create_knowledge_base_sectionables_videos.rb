class CreateKnowledgeBaseSectionablesVideos < ActiveRecord::Migration
  def change
    create_table :knowledge_base_sectionables_videos do |t|
      t.string :url

      t.timestamps
    end
  end
end
