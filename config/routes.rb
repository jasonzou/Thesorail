Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'

  resources :country_codes
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
