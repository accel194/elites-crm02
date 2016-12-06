Rails.application.routes.draw do
  devise_for :users
 resources :customers
 root 'customers#index'
 
 resources :comments, only: [:create, :destoroy]
end
