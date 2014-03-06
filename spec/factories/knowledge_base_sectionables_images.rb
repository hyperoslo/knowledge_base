# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_image, aliases: [:image], class: 'Sectionables::Image' do
    caption "MyText"
    image "MyString"
  end
end
