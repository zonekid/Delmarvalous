Rails.application.routes.draw do
  resources :categories do
    resources :species
  end
  resources :species
end
