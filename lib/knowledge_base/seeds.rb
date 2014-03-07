# Development seeds.

require 'faker'

def fixture file
  File.open "#{File.expand_path File.dirname(__FILE__)}/../../fixtures/#{file}"
end

category    = KnowledgeBase::Category.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence
article     = KnowledgeBase::Article.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence
association = KnowledgeBase::CategoryArticleAssociation.create! category: category, article: article

text    = KnowledgeBase::Sectionables::Text.create! heading: Faker::Lorem.words.join, lead: Faker::Lorem.sentence, body: Faker::Lorem.paragraph
section = KnowledgeBase::Section.create! sectionable: text, container: article, position: 1

image   = KnowledgeBase::Sectionables::Image.create! caption: Faker::Lorem.sentence, image: fixture('parrot.png')
section = KnowledgeBase::Section.create! sectionable: image, container: article, position: 2

video   = KnowledgeBase::Sectionables::Video.create! url: 'http://www.youtube.com/watch?v=9zp6NGhOjiU'
section = KnowledgeBase::Section.create! sectionable: video, container: article, position: 3

gallery = KnowledgeBase::Sectionables::Gallery.create! title: Faker::Lorem.sentence, description: Faker::Lorem.sentence
2.times { gallery.images.create caption: Faker::Lorem.sentence, image: fixture('parrot.png') }
section = KnowledgeBase::Section.create! sectionable: gallery, container: article, position: 4

list = KnowledgeBase::Sectionables::List.create! title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph
2.times { list.items.create title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph }
section = KnowledgeBase::Section.create! sectionable: list, container: article, position: 5

links = KnowledgeBase::Sectionables::Links.create!
2.times { links.links.create title: Faker::Lorem.word, url: 'http://example.org' }
section = KnowledgeBase::Section.create! sectionable: links, container: article, position: 6
