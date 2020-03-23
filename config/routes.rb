Rails.application.routes.draw do
  devise_for :users
  root "contents#index"
  resources :users, only: [:edit, :update]
  resources :customers, only: [:new, :create]
end
