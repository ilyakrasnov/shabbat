Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  resources :events do
    resources :meals do
      resources :items
    end
  end
end
