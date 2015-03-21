Rails.application.routes.draw do
  root to: "translations#new"

  get 'users/show'

  get 'users/index'

  get 'users/profile'
  
  resources :translations

  devise_for :users
  
end
