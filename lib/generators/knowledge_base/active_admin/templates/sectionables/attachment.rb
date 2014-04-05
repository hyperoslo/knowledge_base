ActiveAdmin.register KnowledgeBase::Sectionables::Attachment do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    selectable_column

    column :id
    column :title
    column :file do |attachment|
      link_to attachment.file.to_s, attachment.file.to_s, download: File.basename(attachment.file.to_s)
    end

    actions
  end

  show do |attachment|
    attributes_table do
      row :id
      row :title
      row :file do
        link_to attachment.file.to_s, attachment.file.to_s, download: File.basename(attachment.file.to_s)
      end
    end
  end
end
