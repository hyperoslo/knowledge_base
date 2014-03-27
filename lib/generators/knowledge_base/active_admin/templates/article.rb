ActiveAdmin.register KnowledgeBase::Article do
  menu parent: I18n.t('activerecord.models.knowledge_base')

  index do
    selectable_column

    column :id
    column :title
    column :slug
    column :published_at

    column :published?, sortable: :published_at do |article|
      css_class, label = article.published? ? [ :yes, t('texts.yes') ]
                                            : [ :no, t('texts.no') ]

      status_tag label, css_class
    end

    default_actions
  end

  show do |article|
    columns do
      column do
        attributes_table do
          row :id
          row :title
          row :slug
          row :description do
            simple_format article.description
          end
          row :published_at
          row :created_at
          row :updated_at
          row :categories do
            links = article.categories.map do |category|
              link_to category.title, [ :admin, :knowledge_base, category ]
            end

            raw links.join(", ")
          end

          row :tags do
            article.tags.map(&:title).join ", "
          end
        end
      end
    end
  end

  sectionables = [
    'KnowledgeBase::Sectionables::Gallery',
    'KnowledgeBase::Sectionables::Image',
    'KnowledgeBase::Sectionables::Links',
    'KnowledgeBase::Sectionables::List',
    'KnowledgeBase::Sectionables::Text',
    'KnowledgeBase::Sectionables::Video',
  ]

  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :description
      f.input :published_at
      f.has_many :sections, sortable: :position do |section|

        section.input :sectionable_type, input_html: { parent: true },
          collection: sectionables.map { |sectionable|
          [sectionable.constantize.model_name.human, sectionable]
        }

        sectionables.each do |sectionable|
          section.input :sectionable, wrapper_html: { class: 'hide', child: true, model: sectionable },
            collection: sectionable.constantize.all.map { |sectionable|
            [sectionable.to_s, sectionable.id]
          }
        end

        section.input :_destroy, as: :boolean, label: I18n.t('destroy')
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
