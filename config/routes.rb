Rails.application.routes.draw do
  devise_for :users
  root to: 'babuus#index'
  resources :tweets
  resources :profiles, only: [:show, :new, :edit, :create, :update]
end
