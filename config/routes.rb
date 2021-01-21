Rails.application.routes.draw do

  resources :products
  resources :users
  #   # post '/login', to: 'auth#create'
  #   get '/login', to: 'users#login'
  #   get '/signup', to: 'users#create'
  #   delete "/logout", to: "users#logout"

  #   get "/users/:id/favorites", to: "users#favorites"
  #   get "/users/:id/favorites/:id", to: "favorites#show"
  #   post "/users/:id/favorites", to: "favorites#create"
  #   delete "/users/:id/favorites/:id", to: "favorites#destroy"

  #   get "/users/:id/carts", to: "users#carts"
  #   get "/users/:id/carts/:id", to: "carts#show"
  #   post "/users/:id/carts", to: "carts#create"
  #   delete "/users/:id/carts/:id", to: "carts#destroy"
  # end

end



