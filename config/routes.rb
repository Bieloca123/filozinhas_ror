# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :categories, only: [:index, :show]
  end
  resources :categories
  post '/', to: 'welcome#search', as: :search
  root to: 'categories#index'
  get 'welcome/index'
  get 'welcome/search'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
