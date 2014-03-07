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

  describe '#categories_path' do
    it 'should default to "categories"' do
      expect(subject.categories_path).to eq 'categories'
    end
  end

  describe '#articles_path' do
    it 'should default to "articles"' do
      expect(subject.articles_path).to eq 'articles'
    end
  end
end
