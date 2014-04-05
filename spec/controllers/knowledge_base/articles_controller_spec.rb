require 'spec_helper'

module KnowledgeBase
  describe ArticlesController do
    routes { KnowledgeBase::Engine.routes }

    describe "GET 'show'" do
      it "returns http success" do
        article = create :article, :published

        get :show, id: article.slug

        response.should be_success
      end
    end

  end
end
