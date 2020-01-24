Rails.application.routes.draw do
  post '/users/:id/reviews', to: 'reviews#create'
  resources :users do
    resources :reviews
    resources :matches
  end

  delete 'analytics/index', to: 'sessions#destroy'
  post '/users/:id', to: 'users#remove_friend'
  get '/users/:id', to: 'users#remove_friend'

  patch '/add_friend_profile/:id', to: 'users#add_friend_profile'

  get '/remove_friend/:id', to: 'users#delete_friendship'
  patch '/remove_friend/:id', to: 'users#delete_friendship'

  resources :reviews
  resources :sessions
  resources :analytics

  get 'analytics/index'
  resources :matches
  resources :homes

  get '/homes/homepage', to: 'homes#index'

  get '/users/:id/reviews', to: 'reviews#index'
  
  patch '/add_friend/:id', to: 'users#add_friend' 
  

  get 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :conversations do
    resources :messages
  end


end
