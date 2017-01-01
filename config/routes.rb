Rails.application.routes.draw do
  resources :posts
  resources :about
  resources :contact
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/')
end
