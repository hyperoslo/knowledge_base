module KnowledgeBase
  class Sectionables::Video < ActiveRecord::Base
    VIDEO_ID_EXPRESSION = %r{^https?://(?:(?:www|m)\.)?youtube\.com/watch\?v=([^&]+)}

    def youtube_id
      url[VIDEO_ID_EXPRESSION, 1]
    end

    def to_s
      url
    end
  end
end
