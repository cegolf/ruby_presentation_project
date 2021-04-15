Rails.application.routes.draw do
  root 'sessions#new'
  resources :feedbacks
  resources :presentations
  resources :users
  #get '/login' to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  post '/grade', to: 'presentations#update'
 
end
