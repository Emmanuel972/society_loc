  Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Defines the root path route ("/")
    # root "articles#index"
  get "games/user_games", to: "games#user_games"
  resources :games do
    resources :locations, only: [:show, :new, :create]
  end
    get "locations", to: "locations#index"
end
