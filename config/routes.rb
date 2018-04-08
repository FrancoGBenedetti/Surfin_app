Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/search'

  get 'pages/info'

  resources :categories

  resources :products do
    resources :comments, only: [:create, :destroy]
    resources :photos, only: [:create, :destroy]
  end

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'

  }

  devise_scope :user do
    patch 'users/upgrade', to: 'user/registrations#upgrade'
  end

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
