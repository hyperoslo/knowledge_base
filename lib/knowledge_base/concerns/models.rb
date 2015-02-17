module KnowledgeBase::Concerns::Models
  require 'knowledge_base/concerns/models/category'
  require 'knowledge_base/concerns/models/article'
  require 'knowledge_base/concerns/models/category_article_association'
  require 'knowledge_base/concerns/models/section'
  
  module Sectionables
    require 'knowledge_base/concerns/models/sectionables/gallery'
    require 'knowledge_base/concerns/models/sectionables/image'
    require 'knowledge_base/concerns/models/sectionables/list'
    require 'knowledge_base/concerns/models/sectionables/sectionable'
    require 'knowledge_base/concerns/models/sectionables/text'
    require 'knowledge_base/concerns/models/sectionables/video'

    module Attachments
      require 'knowledge_base/concerns/models/sectionables/attachments/attachment'
      require 'knowledge_base/concerns/models/sectionables/attachments/list'
    end

    module Gallery
      require 'knowledge_base/concerns/models/sectionables/gallery/image'
    end

    module Links
      require 'knowledge_base/concerns/models/sectionables/links/link'
      require 'knowledge_base/concerns/models/sectionables/links/list'
    end

    module List
      require 'knowledge_base/concerns/models/sectionables/list/item'
    end

  end
  
end
