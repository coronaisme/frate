Rails.application.routes.draw do
  resources :matches
  resources :users
  resources :reviews
  
  get 'homes/home_page'


  get 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
