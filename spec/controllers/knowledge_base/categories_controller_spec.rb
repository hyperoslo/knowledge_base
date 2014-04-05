require 'spec_helper'

module KnowledgeBase
  describe CategoriesController do
    routes { KnowledgeBase::Engine.routes }

    describe "GET 'index'" do
      it "returns http success" do
        get :index
        response.should be_success
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        category = create :category, :published

        get :show, id: category.slug

        response.should be_success
      end
    end

  end
end
