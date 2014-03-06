module KnowledgeBase
  class Sectionables::Gallery < ActiveRecord::Base
    has_many :images, -> { order 'position DESC' }
  end
end
