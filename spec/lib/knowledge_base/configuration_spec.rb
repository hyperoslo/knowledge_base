require 'spec_helper'

describe KnowledgeBase::Configuration do
  before do
    KnowledgeBase.reset
  end

  it 'should be configurable' do
    subject.storage = :fog
    expect(subject.storage).to eq :fog
  end

  describe '#storage' do
    it 'should default to :file' do
      expect(subject.storage).to eq :file
    end
  end
end
