module KnowledgeBase
  class Sectionables::List::Item < ActiveRecord::Base
    belongs_to :list
  end
end
