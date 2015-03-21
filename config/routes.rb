Rails.application.routes.draw do
<<<<<<< HEAD
  get 'users/show'

  get 'users/index'

  get 'users/profile'

  resources :translations
=======
>>>>>>> added translation
  
  resources :translations

  devise_for :users
  
  root to: "translations#index"

end
