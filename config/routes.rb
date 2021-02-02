Rails.application.routes.draw do
  
  #user
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"

  #sessions
  delete "/logout", to: "sessions#destroy", as: "destroy_user_session"

  # resources :user_reviews
  # resources :categories
  resources :games
  resources :categories, only: [:index, :show]


  # static
 root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
