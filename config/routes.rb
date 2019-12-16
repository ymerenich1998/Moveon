# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :workers
  resources :customers
  resources :vehicles
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'

  resources :services
  # resources :boxes
  # resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
