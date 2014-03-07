# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_category_article_association, :class => 'CategoryArticleAssociation' do
    category nil
    article nil
    position 1
  end
end
