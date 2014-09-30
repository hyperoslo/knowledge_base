require 'spec_helper'

module KnowledgeBase::Sectionables::Attachments
  describe List do
    subject { described_class.new id: 2, title: "List" }

    describe "#to_s" do
      it "is a combination of the name of the list, the ID and the title" do
        expect(subject.to_s).to eq "Attachment list #2: List"
      end
    end
  end
end
