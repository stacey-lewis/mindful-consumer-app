Rails.application.routes.draw do


  root to: 'pages#home'
  get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'
  resources :registered_users
  resources :registered_vendors

  get '/vendors/filter' => 'registered_vendors#filter', as: "filter"

  get'/admin' => 'registered_vendors#admin'

  #Login/logout routes
  get '/login' => 'session#new' #showing the login form
  post '/login' => 'session#create' #form submits to here, performs login, redirects

  delete '/login' => 'session#destroy' #logout link goes

  get '/login/user' => 'user_session#new' #showing the login form
  post '/login/user' => 'user_session#create' #form submits to here, performs login, redirects

  delete '/login/user' => 'user_session#destroy' #logout link goes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
