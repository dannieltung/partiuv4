Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :favorites, only: [:index, :new, :create]
  resources :spots, only: [:new, :create, :show] do
    resources :crowdnesses, only: [:new, :create, :show]
  end
  # get '/splash', to: 'pages#splash'
end
