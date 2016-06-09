Rails.application.routes.draw do
  resources :posts
  root 'pages#home'

  get 'about'   => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'all'     => 'pages#all'
  
  devise_for :users
end
