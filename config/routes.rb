Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments, only: [:create, :update]
    resources :votes, only: [:create, :update]
  end
  root to: 'static#home'
  namespace :users do
    root to: 'posts#index'
  end
end
