module KnowledgeBase
  class Sectionables::Links < ActiveRecord::Base
    has_many :links

    def to_s
      links.map(&:title).join ', '
    end
  end
end
