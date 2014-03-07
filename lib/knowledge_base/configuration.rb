module KnowledgeBase
  class Configuration
    attr_writer :storage

    def storage
      if @storage.nil?
        :file
      else
        @storage
      end
    end
  end
end
