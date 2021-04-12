Rails.application.routes.draw do
  resources :feedbacks
  resources :groups
  resources :presentations
  resources :users
  #root login
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
