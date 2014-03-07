module KnowledgeBase
  class Sectionables::Links::Link < ActiveRecord::Base
    # ActiveRecord assumes our table will be called 'knowledge_base_sectionables_link_links'
    # because it likes to singularize modules. 'Links' It is not a module, however, but rather
    # a class that represents a collection of links.
    self.table_name = 'knowledge_base_sectionables_links_links'

    belongs_to :links
  end
end
