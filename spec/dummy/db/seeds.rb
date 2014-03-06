# Development seeds.

require 'faker'

category = KnowledgeBase::Category.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence
article  = KnowledgeBase::Article.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence, category: category

sectionable = KnowledgeBase::Sectionables::Text.create! heading: Faker::Lorem.words.join, lead: Faker::Lorem.sentence, body: Faker::Lorem.paragraph
section     = KnowledgeBase::Section.create! sectionable: sectionable, container: article

sectionable = KnowledgeBase::Sectionables::Image.create! caption: Faker::Lorem.sentence, image: File.open('spec/fixtures/parrot.png')
section     = KnowledgeBase::Section.create! sectionable: sectionable, container: article

sectionable = KnowledgeBase::Sectionables::Video.create! url: 'http://www.youtube.com/watch?v=9zp6NGhOjiU'
section     = KnowledgeBase::Section.create! sectionable: sectionable, container: article
