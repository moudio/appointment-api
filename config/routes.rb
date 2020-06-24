# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
scope '/api/v1' do
  resources :cars
  resources :users
  resources :books
end
  root 'cars#index'
  get '/welcome' => 'pages#welcome'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/404' => 'errors#not_found'
  get '/users/:id/cars' => "users#user_cars"
  get '/users/:id/books_cars' => "users#user_books_cars"
  get '/users/:id/cars/:car_id' => "users#show_car"
  get 'logged_in', to: 'sessions#is_logged_in?'
end
