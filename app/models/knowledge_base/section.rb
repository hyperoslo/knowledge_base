module KnowledgeBase
  class Section < ActiveRecord::Base
    belongs_to :sectionable, polymorphic: true

    validates :kind, presence: true
  end
end
