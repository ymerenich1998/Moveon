# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items
  resources :marks
  get '/mark/select', to: 'marks#select'
  resources :models

  devise_for :workers, skip: [:registrations], controllers: {
    sessions: 'workers/sessions'
  }

  as :worker do
    get 'workers/edit', to: 'devise/registrations#edit', as: 'edit_worker_registration'
    put 'workers', to: 'devise/registrations#update', as: 'worker_registration'
  end

  resource :my, except: %i[new create index destroy]
  resources :workers, only: %i[show index]

  resources :customers
  resources :vehicles
  resources :orders
  root 'pages#index'

  resources :services
  # resources :boxes
  # resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
