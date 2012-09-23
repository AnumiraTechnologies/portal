Anumira::Application.routes.draw do
  get "users/index"

  devise_for :users do
      get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session

  end

  resources :posts
  resources :users
  resources :home
  resources :services
  resources :jobs
  resources :contact
  resources :overview
  resources :admin
  
  root :to => 'home#index'

  end
