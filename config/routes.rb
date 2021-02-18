Rails.application.routes.draw do
  
  # reviews
  resources :game_reviews, except: [:new, :create ]
  
  #user/sessions
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "destroy_user_session"
  resources :users, only: [:show] do
    resources :game_reviews, only: [:index, :show, :edit, :delete]
  end
  #omniauth
  match '/auth/:google_oauth2/callback' => 'sessions#google', via: [:get,:post]
  
  # games/category
  resources :games, only: [:index, :show, :new, :create] do
    resource :game_reviews, only: [:new, :create, :index]
  end
  resources :categories, only: [:index, :show]
  get "/top_5", to: "games#top5", as: "top5_games"
  

  # static
 root to: "static#home"

end
