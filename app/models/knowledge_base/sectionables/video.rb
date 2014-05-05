module KnowledgeBase::Sectionables
  class Video < Sectionable
    include Embeddable

    embeddable :video, from: :url

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{url}"
    end
  end
end
