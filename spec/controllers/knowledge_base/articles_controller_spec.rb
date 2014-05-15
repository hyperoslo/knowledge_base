require 'spec_helper'

module KnowledgeBase
  describe ArticlesController do
    routes { KnowledgeBase::Engine.routes }

    describe "GET 'index'" do
      let!(:articles) { create_list :article, 3, :published }

      it "returns http success" do
        get :index

        articles = assigns :articles

        expect(response).to be_success
        expect(articles.count).to eq 3
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        article = create :article, :published

        get :show, id: article.slug

        response.should be_success
      end
    end

  end
end
