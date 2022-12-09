Rails.application.routes.draw do
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :recipes, only:[:index, :create]

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
