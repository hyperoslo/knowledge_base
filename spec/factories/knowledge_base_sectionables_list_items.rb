# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_list_item, aliases: [:item], class: 'Sectionables::List::Item' do
    title "MyString"
    body "MyText"
    position 1
    list nil
  end
end
