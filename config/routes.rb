Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions, only: [:show]
  resources :students, only: [:new, :create, :show]
  resources :mentors, only: [:new, :create, :show]

  root 'welcome#index'

end
