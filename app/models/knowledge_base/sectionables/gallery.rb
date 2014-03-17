module KnowledgeBase
  class Sectionables::Gallery < ActiveRecord::Base
    has_many :images, -> { order 'position DESC' }

    def to_s
      title
    end
  end
end
