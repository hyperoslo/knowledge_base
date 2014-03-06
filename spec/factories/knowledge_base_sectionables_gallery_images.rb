# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_sectionables_gallery_image, :class => 'Sectionables::Gallery::Image' do
    caption "MyString"
    image "MyString"
    position 1
    gallery nil
  end
end
