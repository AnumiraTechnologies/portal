Anumira::Application.routes.draw do

  get "users/index"
  mount Ckeditor::Engine => "/ckeditor"

  devise_for :users do
      get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session

  end
  
  resources :messages, :only => [:new, :create] do
    get 'thank_you', :on => :collection
  end
  match "/contact" => "messages#new", :as => :contact 

  resources :posts
  resources :contact
  resources :users
  resources :home
  resources :services
  resources :jobs
  resources :overview
  resources :admin
  root :to => 'home#index'

  end
