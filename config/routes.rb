Rails.application.routes.draw do
  resources :profiles
  resources :users
  resources :talks
  resources :comments
  resources :posts
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :to => 'home#index'
  resources :profiles
end
