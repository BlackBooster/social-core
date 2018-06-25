# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
  # facebook
  # get '/auth/:provider/callback' => 'sessions#create'
  # get '/signin' => 'sessions#new', :as => :signin
  # get '/signout' => 'sessions#destroy', :as => :signout
  # # twitter
  # get '/auth_twitter/:provider/callback' => 'sessions#twitter_create'
  # get '/signin_twitter' => 'sessions#twitter_new', :as => :signin_twitter
  # # instagram
  # get '/auth_tumblr/:provider/callback' => 'sessions#create_tumblr'
  # get '/signin_tumblr' => 'sessions#new_tumblr', :as => :signin_tumblr
  # # sessions failure
  # get '/auth/failure' => 'sessions#failure'

  # post 'twitter/update_user_account'
  # resources :twitter
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions',
                                    passwords: 'users/passwords',
                                    omniauth_callbacks: 'users/omniauth_callbacks' } # <- this one you need
end
