Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :groups, only: [:index, :new, :create, :show, :edit]
  resources :subgroups, only: [:new, :create, :show]
  resources :bills, only: [:new, :create, :destroy]

end
