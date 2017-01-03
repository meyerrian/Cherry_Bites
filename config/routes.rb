Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :about
  resources :contact
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/')
end
