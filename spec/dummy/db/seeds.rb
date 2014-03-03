# Development seeds.

require 'faker'

category = KnowledgeBase::Category.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence

5.times do
  article = KnowledgeBase::Article.create! title: Faker::Lorem.words.join, description: Faker::Lorem.sentence, category: category
end
