ActiveAdmin.register KnowledgeBase::Sectionables::Video do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    column :id
    column :url

    default_actions
  end

  show do |video|
    attributes_table do
      row :id
      row :address
      row :created_at
      row :updated_at
      row :style
    end
  end
end
