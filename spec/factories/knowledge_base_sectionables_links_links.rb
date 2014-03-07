# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_links_link, aliases: [:links], class: 'Sectionables::Links::Link' do
    title "MyString"
    url "MyString"
    position 1
  end
end
