module KnowledgeBase::Sectionables
  class Video < Sectionable
    VIDEO_ID_EXPRESSION = %r{^https?://(?:(?:www|m)\.)?youtube\.com/watch\?v=([^&]+)}

    def youtube_id
      url[VIDEO_ID_EXPRESSION, 1]
    end

    def to_s
      "#{super}: #{url}"
    end
  end
end
