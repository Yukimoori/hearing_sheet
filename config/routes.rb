Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#new'
  resources :pages
end
