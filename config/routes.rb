Rails.application.routes.draw do

  root 'home#index'
  get '/about', to: 'home#about'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }

  resources :posts
  resources :users do
    member do
      get :all_posts, path: '/all-posts'
    end
  end
  resources :comments, except: [:index]

end
