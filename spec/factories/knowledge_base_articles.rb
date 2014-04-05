FactoryGirl.define do
  factory :knowledge_base_article, aliases: [:article], class: 'KnowledgeBase::Article' do
    title "MyString"
    slug "mystring"
    description "MyText"

    trait(:published) { published_at 1.day.ago }
  end
end
