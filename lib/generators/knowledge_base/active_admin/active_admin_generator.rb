module KnowledgeBase
  class ActiveAdminGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_configuration_files
      directory '', 'app/admin/knowledge_base'
    end
  end
end
