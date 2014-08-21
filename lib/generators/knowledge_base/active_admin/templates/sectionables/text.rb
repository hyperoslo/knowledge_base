ActiveAdmin.register KnowledgeBase::Sectionables::Text do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  form do |f|
    f.inputs do
      f.input :heading
      f.input :lead
      f.input :body

      image_hint = f.object.new_record? ? nil : f.template.image_tag(f.object.image.medium)
      f.input :image, hint: image_hint
      f.input :remove_image, as: :boolean

      f.input :style
    end

    f.actions
  end

  index do
    column :id
    column :heading

    default_actions
  end

  show do |text|
    attributes_table do
      row :id
      row :image do
        image_tag text.image.medium
      end
      row :created_at
      row :updated_at
    end

    header h1 text.heading
    para strong text.lead

    para text.body
  end
end
