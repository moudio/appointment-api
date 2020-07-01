# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api/v1' do
    resources :cars
    resources :users
    resources :books, only: %i[create show destroy update]
  end

  root 'cars#index'
  get '/welcome' => 'pages#welcome'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/404' => 'errors#not_found'
  get '/users/:username/books_cars' => 'users#user_books_cars'
  get 'logged_in', to: 'sessions#is_logged_in?'
end
