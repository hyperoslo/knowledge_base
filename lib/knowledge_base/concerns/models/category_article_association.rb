module KnowledgeBase::Concerns::Models::CategoryArticleAssociation
  extend ActiveSupport::Concern

  included do
    belongs_to :category
    belongs_to :article
  end
end
