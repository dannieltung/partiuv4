Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots, only: [:new, :create, :show]
  resources :favorites
  resources :users, only: [:show]
end
