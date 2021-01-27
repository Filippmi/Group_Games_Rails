Rails.application.routes.draw do
  # resources :users
  # resources :user_reviews
  # resources :categories
  resources :games

 root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
