module KnowledgeBase::Sectionables
  class Video < Sectionable
    embeddable :video, from: :url

    has_many :sections, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{url}"
    end
  end
end
