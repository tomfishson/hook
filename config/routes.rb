Rails.application.routes.draw do
  get 'fishes/index'

  root to: 'users#show'

  devise_for :users

  resources :logs do
    resources :catches, only: [:show, :create]
  end

  resources :fishes, only: [:index]
end
