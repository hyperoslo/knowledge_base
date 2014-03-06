# Development seeds.

require 'faker'

category = KnowledgeBase::Category.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence
article  = KnowledgeBase::Article.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence, category: category

sectionable = KnowledgeBase::Sectionables::Text.create! heading: Faker::Lorem.words.join, lead: Faker::Lorem.sentence, body: Faker::Lorem.paragraph
section     = KnowledgeBase::Section.create! sectionable: sectionable, container: article
