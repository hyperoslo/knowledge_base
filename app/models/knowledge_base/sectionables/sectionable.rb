module KnowledgeBase::Sectionables
  class Sectionable < ActiveRecord::Base
    extend Enumerize

    def self.inherited(child)
      styles = KnowledgeBase.config.custom_section_styles[child.name] || [ ]
      child.enumerize :custom_style, in: styles

      super
    end

    self.abstract_class = true

    def to_s
      self.class.model_name.human
    end
  end
end
