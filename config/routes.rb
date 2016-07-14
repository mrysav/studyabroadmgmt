Rails.application.routes.draw do
  root 'search#index'
  
  get '/login' => 'sessions#new', :as => :login 
  get '/logout' => 'sessions#destroy', :as => :logout
  get '/register' => 'sessions#register', :as => :register
  match '/auth/:provider/callback' => 'sessions#create', via: [:get, :post]
  
  get 'profile' => 'users#edit', :as => :user
  put 'profile' => 'users#update'

  # get '/import' => 'import#show'
  # put '/import' => 'import#upload'
  
  get '/search' => 'search#index'
  resources :equivalencies
  get '/my-equivalencies/' => 'equivalencies#user'

  get '/admin'  => 'admin#index', :as => :admin

end
