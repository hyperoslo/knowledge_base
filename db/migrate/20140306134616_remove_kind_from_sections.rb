class RemoveKindFromSections < ActiveRecord::Migration
  def change
    remove_column :knowledge_base_sections, :kind, :string
  end
end
