Rails.application.routes.draw do
  devise_for :users
  resources :notes
  root 'notes#index'
  resources :users
end
