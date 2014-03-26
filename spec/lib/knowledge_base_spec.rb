require 'spec_helper'

describe KnowledgeBase do
  describe '#reset' do
    let!(:default) { subject.config.categories_path }

    before do
      subject.configure do |config|
        config.categories_path = 'THEN WHO WAS PHONE!?'
      end

      subject.reset
    end

    it 'should reset configuration' do
      expect(subject.config.categories_path).to eq default
    end
  end
end
