module KnowledgeBase::Concerns::Models::Article
  extend ActiveSupport::Concern

  included do
    extend FriendlyId

    publishable

    friendly_id :title, use: :slugged

    has_many :category_article_associations
    has_many :categories, through: :category_article_associations
    has_many :sections, -> { order 'position ASC' }, as: :container
  end
end
