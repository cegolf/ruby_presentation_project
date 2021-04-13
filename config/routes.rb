Rails.application.routes.draw do
  root 'sessions#new'
  resources :feedbacks
  resources :presentations
  resources :users
  #get '/login' to: 'sessions#new'
  delete '/login', to: 'sessions#sdestroy'
  post '/login', to: 'sessions#create'
 
end
