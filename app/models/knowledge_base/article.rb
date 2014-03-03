module KnowledgeBase
  class Article < ActiveRecord::Base
    extend FriendlyId

    publishable

    friendly_id :title, use: :slugged

    belongs_to :category
  end
end
