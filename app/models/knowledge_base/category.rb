module KnowledgeBase
  class Category < ActiveRecord::Base
    extend FriendlyId

    friendly_id :title, use: :slugged

    belongs_to :category

    scope :root, -> { where parent_id: nil }
    scope :published, -> { where published: true }
  end
end
