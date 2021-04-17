Rails.application.routes.draw do
  resources :feedbacks
  root 'sessions#new'
  resources :presentations
  resources :users
  #get '/login' to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  post '/grade', to: 'presentations#update'

 
end
