Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'visitors#index'
  devise_for :users

  resources :events do
    resources :meals do
      resources :items
    end
  end
end
