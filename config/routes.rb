Rails.application.routes.draw do
  get 'sessions/new'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create]
end
