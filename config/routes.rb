Rails.application.routes.draw do
  root 'login_page#login'
  #get 'login_page/login'
  get 'admin/home'
  #root login
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
