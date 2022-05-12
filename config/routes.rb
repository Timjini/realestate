Rails.application.routes.draw do
  resources :proproty_attachements
  resources :properties
  devise_for :users
  root 'home#index'

end
