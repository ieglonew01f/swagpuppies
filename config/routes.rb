Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations"}

  devise_scope :user do
      get '/users/sign_out', to: 'devise/sessions#destroy', as: :sign_out
  end

  resources :users, only: [:index]
  resources :wallets, only: [:index, :create]
  resources :puppies, only: [:index, :show, :search]
  resources :breeds, only: [:index]
  resources :requests, only: [:index, :create]

  root :to => 'welcome#index'
end