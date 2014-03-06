# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_gallery, :class => 'Sectionables::Gallery' do
    title "MyString"
    description "MyString"
  end
end
