Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :about
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/')
end
