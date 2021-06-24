Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  #get 'home/index'
  root 'home#index'
  
  resources :users do
    member do
      get :followers
    end
  end

  resources :blog do
    member do
      get :blogs
    end
  end

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end
