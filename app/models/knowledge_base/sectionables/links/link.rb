module KnowledgeBase::Sectionables::Links
  class Link < ActiveRecord::Base
    belongs_to :list, foreign_key: :links_id
  end
end
