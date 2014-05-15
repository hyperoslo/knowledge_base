KnowledgeBase::Engine.routes.draw do
  resources :articles, path: KnowledgeBase.config.articles_path, only: [:index, :show]

  resources :categories, path: KnowledgeBase.config.categories_path, only: [:index, :show] do
    resources :articles, path: KnowledgeBase.config.articles_path, only: [:show]
  end
end
