# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_video, aliases: [:video], class: 'KnowledgeBase::Sectionables::Video' do
    url "MyString"
  end
end
