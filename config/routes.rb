Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  resources :messages
  devise_for :admins
end
