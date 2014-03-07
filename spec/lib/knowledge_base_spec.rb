require 'spec_helper'

describe KnowledgeBase do
  describe '#reset' do
    let!(:default) { subject.config.storage }

    before do
      subject.configure do |config|
        config.storage = 'THEN WHO WAS PHONE!?'
      end

      subject.reset
    end

    it 'should reset configuration' do
      expect(subject.config.storage).to eq default
    end
  end
end
