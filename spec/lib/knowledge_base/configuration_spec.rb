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

  describe '#section_styles' do
    it 'should default to an empty hash' do
      expect(subject.section_styles).to eq({ })
    end
  end

  describe '#text_image_uploader' do
    it 'should default to the KB uploader' do
      expect(subject.text_image_uploader).to eq KnowledgeBase::ImageUploader
    end
  end

  describe '#image_image_uploader' do
    it 'should default to the KB uploader' do
      expect(subject.image_image_uploader).to eq KnowledgeBase::ImageUploader
    end
  end

  describe '#gallery_image_uploader' do
    it 'should default to the KB uploader' do
      expect(subject.gallery_image_uploader).to eq KnowledgeBase::ImageUploader
    end
  end

  describe '#list_image_uploader' do
    it 'should default to the KB uploader' do
      expect(subject.list_image_uploader).to eq KnowledgeBase::ImageUploader
    end
  end
end
