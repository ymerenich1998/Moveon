# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :owners
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'

  resources :customers
  resources :vehicles
  resources :services
  # resources :boxes
  # resources :events
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
