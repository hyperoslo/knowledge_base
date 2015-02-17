module KnowledgeBase::Concerns::Models::Section
  extend ActiveSupport::Concern

  included do
    # It sounds wrong that a section "belongs to" a sectionable, but we want the foreign
    # key to be on this side and declaring `belongs_to` is the only way to do that.
    belongs_to :sectionable, polymorphic: true

    belongs_to :container, polymorphic: true

    validates :sectionable, presence: true
  end
end
