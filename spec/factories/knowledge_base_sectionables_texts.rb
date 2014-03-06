# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_text, aliases: [:text], class: 'Sectionables::Text' do
    heading "MyString"
    lead "MyText"
    body "MyText"
    weight "MyString"
    sectionable nil
  end
end
