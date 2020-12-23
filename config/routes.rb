# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/logout' => 'sessions#destroy'
  resources :hellos
  # set routes that are used by controllers root route is default
  get 'index' => 'home#index'
  get 'duk' => 'home#duk'
  get 'contact' => 'home#contact'
  get 'order' => 'order#order'
  get 'create' => 'order#new'
  root 'home#index'
end
