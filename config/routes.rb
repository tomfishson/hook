Rails.application.routes.draw do
  get 'fishes/index'
  devise_for :users
  resources :fishes, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
