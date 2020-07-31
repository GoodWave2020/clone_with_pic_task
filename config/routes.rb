Rails.application.routes.draw do
  get 'sessions/new'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :tops, only: [:index]
  root 'tops#index'
end
