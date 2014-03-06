module KnowledgeBase
  class Section < ActiveRecord::Base
    # It sounds wrong that a section "belongs to" a sectionable, but we want the foreign
    # key to be on this side and declaring `belongs_to` is the only way to do that.
    belongs_to :sectionable, polymorphic: true

    validates :kind, presence: true
  end
end
