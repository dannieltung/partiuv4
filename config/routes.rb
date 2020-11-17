Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots, only: [:show, :create, :edit, :update, :destroy] do
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end
