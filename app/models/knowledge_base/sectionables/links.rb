module KnowledgeBase
  class Sectionables::Links < ActiveRecord::Base
    has_many :links
  end
end
