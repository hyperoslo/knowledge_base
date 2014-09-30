require 'spec_helper'

module KnowledgeBase::Sectionables::Attachments
  describe List do
    describe "#to_s" do
      it "is the title" do
        expect(subject.to_s).to eq subject.title
      end
    end
  end
end
