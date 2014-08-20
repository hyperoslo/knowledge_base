require 'spec_helper'

module KnowledgeBase
  describe Sectionables::Sectionable do
    describe "::inherited" do
      let(:child) { KnowledgeBase::Sectionables::Text }

      context "when no styles are configured" do
        before do
          KnowledgeBase.config.custom_section_styles = { }
          described_class.inherited child
        end

        it "enumerizes over an empty array" do
          expect(KnowledgeBase::Sectionables::Text.custom_style.options).to eq []
        end
      end

      context "when styles are configured" do
        before do
          KnowledgeBase.config.custom_section_styles = {
            "KnowledgeBase::Sectionables::Text" => [:red]
          }

          described_class.inherited child
        end

        it "enumerizes over the configured styles" do
          expect(KnowledgeBase::Sectionables::Text.custom_style.options).to eq [["Red", "red"]]
        end
      end
    end
  end
end
