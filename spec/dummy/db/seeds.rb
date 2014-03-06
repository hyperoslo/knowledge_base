# Development seeds.

require 'faker'

category = KnowledgeBase::Category.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence
article  = KnowledgeBase::Article.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence, category: category

text    = KnowledgeBase::Sectionables::Text.create! heading: Faker::Lorem.words.join, lead: Faker::Lorem.sentence, body: Faker::Lorem.paragraph
section = KnowledgeBase::Section.create! sectionable: text, container: article

image   = KnowledgeBase::Sectionables::Image.create! caption: Faker::Lorem.sentence, image: File.open('spec/fixtures/parrot.png')
section = KnowledgeBase::Section.create! sectionable: image, container: article

video   = KnowledgeBase::Sectionables::Video.create! url: 'http://www.youtube.com/watch?v=9zp6NGhOjiU'
section = KnowledgeBase::Section.create! sectionable: video, container: article

gallery = KnowledgeBase::Sectionables::Gallery.create! title: Faker::Lorem.sentence, description: Faker::Lorem.sentence
2.times { gallery.images.create caption: Faker::Lorem.sentence, image: File.open('spec/fixtures/parrot.png') }
section = KnowledgeBase::Section.create! sectionable: gallery, container: article
