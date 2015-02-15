module KnowledgeBase::Concerns::Models::Sectionables::Gallery
  extend ActiveSupport::Concern

  included do
    has_many :images, -> { order position: :asc },
      dependent: :destroy

    has_many :sections, as: :sectionable, dependent: :destroy

    accepts_nested_attributes_for :images, allow_destroy: true

    def to_s
      "#{super} ##{id}: #{title}"
    end
  end
end

