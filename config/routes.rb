Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/search'

  get 'pages/info'

  resources :categories
  resources :products
  
  devise_for :users


  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
