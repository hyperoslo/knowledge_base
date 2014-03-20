class AddImageToTexts < ActiveRecord::Migration
  def change
    add_column :knowledge_base_sectionables_texts, :image, :string
  end
end
