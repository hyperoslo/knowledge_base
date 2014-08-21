ActiveAdmin.register KnowledgeBase::Sectionables::Gallery do
  menu parent: I18n.t('activerecord.models.knowledge_base/section/kind.other')

  index do
    column :id
    column :title
    column :description

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description

      f.input :style

      f.has_many :images, sortable: :position do |f|
        f.input :caption

        image_hint = f.object.new_record? ? nil : f.template.image_tag(f.object.image.medium)
        f.input :image, hint: image_hint

        f.input :_destroy, as: :boolean, label: I18n.t('destroy')
      end
    end

    f.actions
  end

  show do |gallery|
    attributes_table do
      row :id
      row :title
      row :description
      row :images do
        gallery.images.map do |image|
          image_tag(image.image.medium)
        end.join(" ").html_safe
      end
    end
  end
end
