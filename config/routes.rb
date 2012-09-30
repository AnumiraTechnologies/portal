Anumira::Application.routes.draw do
  get "users/index"
  mount Ckeditor::Engine => "/ckeditor"

  devise_for :users do
      get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session

  end

  resources :posts
  resources :users
  resources :home
  resources :services
  resources :jobs
match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
  resources :overview
  resources :admin
  
  root :to => 'home#index'

  end
