Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :spots, only: [:new, :create, :show]
  resources :favorites, only: [:index, :new, :create]
  resources :crowdnesses, only: [:new, :create]
end
