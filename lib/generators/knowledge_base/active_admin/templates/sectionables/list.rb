ActiveAdmin.register KnowledgeBase::Sectionables::List do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    column :id
    column :title

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description

      image_hint = f.object.new_record? ? nil : f.template.image_tag(f.object.image.medium)
      f.input :image, hint: image_hint
      f.input :remove_image, as: :boolean

      f.input :style

      f.has_many :items, sortable: :position do |f|
        f.input :title
        f.input :body

        f.input :_destroy, as: :boolean, label: I18n.t('destroy')
      end
    end

    f.actions
  end

  show do |list|
    attributes_table do
      row :id
      row :title
      row :description
      row :created_at
      row :updated_at
    end

    list.items.each do |item|
      panel item.title do
        para em item.body
      end
    end
  end
end
