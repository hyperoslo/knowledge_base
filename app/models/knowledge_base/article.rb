module KnowledgeBase
  class Article < ActiveRecord::Base
    include Concerns::Models::Article
  end
end
