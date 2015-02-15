module KnowledgeBase::Concerns::Models::Sectionables::Video
  extend ActiveSupport::Concern

  included do
    include Embeddable

    embeddable :video, from: :url

    has_many :sections, as: :sectionable, dependent: :destroy

    def to_s
      "#{super} ##{id}: #{url}"
    end
  end
end
