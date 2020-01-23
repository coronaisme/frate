Rails.application.routes.draw do
  post '/users/:id/reviews', to: 'reviews#create'
  resources :users do
    resources :reviews
    resources :matches
  end

  resources :reviews
  resources :sessions
  resources :analytics

  get 'analytics/index'
  resources :matches
  get 'homes/home_page'

  get '/users/:id/reviews', to: 'reviews#index'
  
  patch '/users/:id', to: 'users#add_friend'

  get 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :conversations do
    resources :messages
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
