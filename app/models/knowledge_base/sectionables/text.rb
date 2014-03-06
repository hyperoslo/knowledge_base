module KnowledgeBase
  class Sectionables::Text < ActiveRecord::Base
    has_one :section, as: :sectionable
  end
end
