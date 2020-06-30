Rails.application.routes.draw do
  get 'fishes/index'

  root to: 'users#show'

  devise_for :users

  resources :logs
  resources :fishes, only: [:index]
end
