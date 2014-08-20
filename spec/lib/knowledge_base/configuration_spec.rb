require 'spec_helper'

describe KnowledgeBase::Configuration do
  before do
    KnowledgeBase.reset
  end

  it 'should be configurable' do
    subject.categories_path = :fog
    expect(subject.categories_path).to eq :fog
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

  describe '#custom_section_styles' do
    it 'should default to an empty hash' do
      expect(subject.custom_section_styles).to eq({ })
    end
  end
end
