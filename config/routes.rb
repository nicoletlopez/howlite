Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #root
  root 'pages#home', as: 'home'

  resources :profiles
  resources :faculties
  resources :hrs

  #jobs
  resources :jobs

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
