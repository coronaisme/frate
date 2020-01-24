Rails.application.routes.draw do
  post '/users/:id/reviews', to: 'reviews#create'
  resources :users do
    resources :reviews
    resources :matches
  end

  delete 'analytics/index', to: 'sessions#destroy'
  

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


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
