module KnowledgeBase::Sectionables
  class Sectionable < ActiveRecord::Base
    extend Enumerize

    def self.inherited(child)
      model_name = snake_case_class_name child.name
      styles = KnowledgeBase.config.custom_section_styles[model_name] || [ ]
      child.enumerize :custom_style, in: styles

      super
    end

    self.abstract_class = true

    def to_s
      self.class.model_name.human
    end

    private

    def self.snake_case_class_name(class_name)
      class_name.gsub("KnowledgeBase::Sectionables::", "").underscore.gsub("/", "_").to_sym
    end

  end
end
