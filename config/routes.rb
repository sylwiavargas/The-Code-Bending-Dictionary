# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :technologies, only: %i[show index]
      resources :definitions # , only: %i[new create update edit delete show]
      resources :votes, only: %i[new create update edit delete]
      resources :favorites, only: %i[new create index]
      resources :words
      resources :users

      get '/pending-words', to: 'words#pending'
      get '/pending-definitions', to: 'definitions#pending'
    end
  end

  resources :technologies, only: %i[show index]
  resources :definitions, only: %i[new create update edit delete]
  resources :votes, only: %i[new create update edit delete]
  resources :favorites, only: %i[new create index]
  resources :words
  resources :users

  get '/login', to: 'users#login', as: 'login'
  post '/send_the_form_here', to: 'users#handle_login'
  delete '/logout', to: 'users#logout', as: 'logout'
  get '/profile', to: 'users#profile', as: 'profile'
end
