Rails.application.routes.draw do
  get 'sessions/new'

  #get 'users/new'
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
   # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
<<<<<<< HEAD
     member do
=======
    member do
>>>>>>> add-basic-info
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
end