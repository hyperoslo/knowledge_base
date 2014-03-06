# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_list, aliases: [:list], class: 'Sectionables::List' do
    title "MyString"
    description "MyText"
  end
end
