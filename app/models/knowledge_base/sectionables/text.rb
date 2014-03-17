module KnowledgeBase
  class Sectionables::Text < ActiveRecord::Base
    def to_s
      heading
    end
  end
end
