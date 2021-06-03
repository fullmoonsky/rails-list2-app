Rails.application.routes.draw do

  resources :zones
  resources :content_providers
  resources :assets
  resources :content_ratings
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'home#index'
  get 'dashboard/index'
 
  
end
