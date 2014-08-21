ActiveAdmin.register KnowledgeBase::Sectionables::Links::List do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    column :id
    column :links do |links|
      links.links.map { |link| link_to link.title, link.url }.join(", ").html_safe
    end

    default_actions
  end

  form do |f|
    f.has_many :links, sortable: :position do |f|
      f.input :title
      f.input :description
      f.input :url

      f.input :style
    end

    f.actions
  end

  show do |links|
    attributes_table do
      row :id
      row :links do
        links.links.map { |link| link_to link.title, link.url }.join(", ").html_safe
      end
      row :created_at
      row :updated_at
    end
  end
end
