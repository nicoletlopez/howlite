Rails.application.routes.draw do

  devise_for :hrs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #root
  root 'pages#home', as: 'home'

  #users
  devise_for :users,:controllers=>{registrations:'registrations'}

  resources :profiles
  resources :faculties

  #jobs
  resources :jobs


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
