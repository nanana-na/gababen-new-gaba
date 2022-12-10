Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/new'
  get 'friends/create'
  get 'friends/show'
  resources :books
  resources :talks
  resources :comments
  resources :posts
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :to => 'books#index'
  resources :users
  resources :notes
end
