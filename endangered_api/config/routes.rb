Rails.application.routes.draw do
  resources :categories do
    resources :species do
      resources :comments
    end
  end
  resources :species
  resources :comments, only: [:index]
end
