Rails.application.routes.draw do
  devise_for :users
  root to: 'softwares#index'
  resources :softwares
end
