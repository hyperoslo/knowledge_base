KnowledgeBase::Engine.routes.draw do
  resources :categories, path: KnowledgeBase.config.categories_path, only: [:index, :show] do
    resources :articles, path: KnowledgeBase.config.articles_path, only: [:show], shallow: true
    resources :articles, path: KnowledgeBase.config.articles_path, only: [:show]
  end
end
