Rails.application.routes.draw do
  resources :alerts

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
