Rails.application.routes.draw do
  get 'latest', to: 'alerts#latest'
  resources :alerts

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
