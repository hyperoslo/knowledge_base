class AddTitleToKnowledgeBaseSectionablesVideos < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_videos, :title, :string
  end
end
