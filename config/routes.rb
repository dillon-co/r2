Rails.application.routes.draw do
  get 'users/show'

  get 'users/index'

  get 'users/profile'

  resources :translations
  
  devise_for :users
  
  root to: "home#index"

end
