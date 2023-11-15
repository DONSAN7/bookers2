Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'

  resources :users, only: [:create, :index, :show, :edit]
  resources :books, only: [:new, :create, :index, :show, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
