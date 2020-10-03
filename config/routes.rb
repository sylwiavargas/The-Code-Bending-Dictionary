Rails.application.routes.draw do

  resources :technologies, only: [:show, :index]
  resources :definitions, only: [:new, :create, :update, :edit, :delete]
  resources :favorites, only: [:new, :create, :index]
  resources :words


  get "/login", to: "users#login", as: "login"
  post "/send_the_form_here", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"

  get "/profile", to: "users#profile", as: "profile"

  get "/users", to: "users#index", as: "users" #users_path
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user" #user_path(id) or an instance user_path(@user)
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

end
