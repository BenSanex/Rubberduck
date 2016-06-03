Rails.application.routes.draw do
  devise_for :users 

  resources :students, only: [:new, :create, :show]
  resources :mentors, only: [:new, :create, :show]

  root 'welcome#index'

end
