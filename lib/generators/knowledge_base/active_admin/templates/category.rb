ActiveAdmin.register KnowledgeBase::Category do
  menu parent: I18n.t('activerecord.models.knowledge_base')

  index do
    selectable_column

    column :id
    column :title
    column :slug
    column :published_at

    column :published?, sortable: :published_at do |category|
      css_class, label = category.published? ? [ :yes, t('texts.yes') ]
                                            : [ :no, t('texts.no') ]

      status_tag label, css_class
    end

    default_actions
  end

  show do |category|
    columns do
      column do
        attributes_table do
          row :id
          row :title
          row :slug
          row :description do
            simple_format category.description
          end
          row :category
          row :position
          row :published_at
          row :created__at
          row :updated_at
          row :articles do
            links = category.articles.map do |articles|
              link_to articles.title, [ :admin, :knowledge_base, articles ]
            end

            raw links.join(", ")
          end
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :description
      f.input :published_at
      f.has_many :category_article_associations, sortable: :position do |f|
        f.input :article

        f.input :_destroy, as: :boolean, label: I18n.t('destroy')
      end
    end
    
    f.actions
  end

  controller do
    def find_resource
      scoped_collection.friendly.find params[:id]
    end
  end
end
