module KnowledgeBase::Concerns::Models::Sectionables::List::Item
  extend ActiveSupport::Concern

  included do
    belongs_to :list
  end
end
