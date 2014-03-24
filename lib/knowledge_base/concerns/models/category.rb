module KnowledgeBase::Concerns::Models::Category
  extend ActiveSupport::Concern

  included do
    extend FriendlyId

    publishable on: :published_at

    friendly_id :title, use: :slugged

    belongs_to :category
    has_many :category_article_associations, -> { order 'position ASC' }
    has_many :articles, through: :category_article_associations

    accepts_nested_attributes_for :category_article_associations, allow_destroy: true

    scope :root, -> { where parent_id: nil }
    scope :published, -> { where published: true }

    def to_s
      title
    end
  end
end
