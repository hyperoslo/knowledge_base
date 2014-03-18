module KnowledgeBase::Sectionables
  class Sectionable < ActiveRecord::Base
    self.abstract_class = true

    def to_s
      self.class.model_name.human
    end
  end
end
