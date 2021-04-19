Rails.application.routes.draw do
  #devise_scope :user do
    #get '/users/sign_out' => 'devise/sessions#destroy'
  #end
  devise_for :users
  # get 'prototypes/index'
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show
  
end
