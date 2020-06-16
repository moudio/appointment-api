# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :index, :show]
  resources :cars
  resources :books
  root 'cars#index'
  get '/welcome' => 'pages#welcome'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'
  get '/404' => 'errors#not_found'
  
end
