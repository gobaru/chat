Rails.application.routes.draw do
  get 'rooms/new'
  get 'rooms/create'
  get 'users/edit'
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
