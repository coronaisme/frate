Rails.application.routes.draw do
  get 'login_pages/home'
  resources :users
  resources :matches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
