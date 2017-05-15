Rails.application.routes.draw do
  resources :categories do
    resources :species do
      resources :comments
    end
  end
  resources :species do
    resources :comments, only: [:index, :create]
  end
  resources :comments, only: [:index, :show]
end
