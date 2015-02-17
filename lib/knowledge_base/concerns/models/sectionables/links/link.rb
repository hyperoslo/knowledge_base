module KnowledgeBase::Concerns::Models::Sectionables::Links::Link
  extend ActiveSupport::Concern

  included do
    belongs_to :list, foreign_key: :links_id
  end
end
