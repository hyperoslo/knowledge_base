module KnowledgeBase
  class Configuration
    configs = {
      categories_path: 'categories',
      articles_path: 'articles'
    }

    configs.each do |config, default|
      attr_writer config

      define_method config do
        value = instance_variable_get "@#{config}"

        if value.nil?
          default
        else
          value
        end
      end
    end
  end
end
