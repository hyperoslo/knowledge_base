module KnowledgeBase
  class Sectionables::List < ActiveRecord::Base
    has_many :items, -> { order 'position ASC' }

    def to_s
      title
    end
  end
end
