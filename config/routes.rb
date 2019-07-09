Rails.application.routes.draw do

  resources :listings, only: [:index,:create,:destroy]
    post '/listings/:id', to: 'listings#rented'

  resources :ratings

  resources :rents, only: [:index, :create, :destroy]

  resources :users, only: [:create,:show, :index]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/autoLogin', to: 'auth#autoLogin'
end
