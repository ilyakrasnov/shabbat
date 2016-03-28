Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  resources :events, only: [:index, :show]
end
