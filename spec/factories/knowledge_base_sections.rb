# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_section, aliases: [:section], class: 'KnowledgeBase::Section' do
    sectionable nil
    kind "MyString"
    sequence(:position)
  end
end
