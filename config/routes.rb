Rails.application.routes.draw do
  resources: translations
  
  devise_for :users
  
  root to: "home#index"

end
