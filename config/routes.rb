Rails.application.routes.draw do

  root to: 'pages#home'
  get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'
  resources :registered_users
  resources :registered_vendors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
