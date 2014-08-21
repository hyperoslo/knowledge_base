ActiveAdmin.register KnowledgeBase::Sectionables::Image do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  form do |f|
    f.inputs do
      f.input :caption

      image_hint = f.object.new_record? ? nil : f.template.image_tag(f.object.image.medium)
      f.input :image, hint: image_hint

      f.input :style
    end

    f.actions
  end

  index as: :grid do |i|
    link_to image_tag(i.image.medium), admin_knowledge_base_sectionables_image_path(i)
  end

  index do
    column :id
    column :caption

    default_actions
  end

  show do |image|
    attributes_table do
      row :id
      row :caption
      row :image do
        image_tag image.image
      end
    end
  end
end
