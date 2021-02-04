Rails.application.routes.draw do
  
  # reviews
  resources :game_reviews, except: [:new, :create ]

  #user
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  resources :users, only: [:show] do
    resources :game_reviews, only: [:index, :show, :edit, :delete]
  end


  #sessions
  delete "/logout", to: "sessions#destroy", as: "destroy_user_session"

  # games/category
  resources :games do
    resource :game_reviews, only: [:new, :create, :index]
  end
  resources :categories, only: [:index, :show]


  # static
 root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
