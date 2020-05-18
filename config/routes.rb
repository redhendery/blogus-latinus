Rails.application.routes.draw do

  resources :comments
  root 'home#index'

  devise_for :users

  resources :posts
  resources :home, only: %w[index show]

end
