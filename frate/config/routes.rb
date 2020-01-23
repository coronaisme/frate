Rails.application.routes.draw do
  get 'analytics/index'
  patch '/add_friend/:id', to: 'users#add_friend'
  resources :matches
  resources :users
  resources :reviews
  resources :sessions
  resources :analytics


  get 'homes/home_page'


  get 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :conversations do
    resources :messages
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
