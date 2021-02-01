Rails.application.routes.draw do
  
  #user
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"

  # resources :user_reviews
  # resources :categories
  resources :games
  resources :categories, only: [:index, :show]


  # static
 root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
