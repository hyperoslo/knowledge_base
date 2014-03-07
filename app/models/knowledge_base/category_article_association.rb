module KnowledgeBase
  class CategoryArticleAssociation < ActiveRecord::Base
    belongs_to :category
    belongs_to :article
  end
end
