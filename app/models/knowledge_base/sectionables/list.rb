module KnowledgeBase
  class Sectionables::List < ActiveRecord::Base
    has_many :items, -> { order 'position ASC' }
  end
end
