Rails.application.routes.draw do
  resources :sessions, only: [:create]

  root 'customers#index'
  resources :customers
end
