FactoryGirl.define do
  factory :knowledge_base_category, aliases: [:category], class: 'KnowledgeBase::Category' do
    title "MyString"
    slug "mystring"
    description "MyText"
    sequence(:position)

    trait(:published) { published_at 1.day.ago }
  end
end
