Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :chats, only: [:show, :create]
  resources :users, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
