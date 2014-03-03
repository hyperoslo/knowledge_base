KnowledgeBase::Engine.routes.draw do
  resources :categories, only: [:index, :show] do
    resources :articles, only: [:show]
  end
end
