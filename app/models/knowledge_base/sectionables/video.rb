module KnowledgeBase::Sectionables
  class Video < Sectionable
    embeddable :video, from: :url

    def to_s
      "#{super} ##{id}: #{url}"
    end
  end
end
