Rails.application.routes.draw do

  resources :registered_users
  resources :registered_vendors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
