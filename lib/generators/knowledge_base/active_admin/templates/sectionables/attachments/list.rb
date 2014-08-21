ActiveAdmin.register KnowledgeBase::Sectionables::Attachments::List do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    selectable_column
    
    column :links do |list|
      list.attachments.map(&:title).join ", "
    end

    actions
  end

  form do |f|
    f.has_many :attachments do |f|
      f.input :title
      f.input :file
      f.input :description

      f.input :style
    end

    f.actions
  end
end
