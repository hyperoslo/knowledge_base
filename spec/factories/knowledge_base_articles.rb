# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_article, aliases: [:article], class: 'KnowledgeBase::Article' do
    title "MyString"
    slug "MyString"
    description "MyText"
  end
end
