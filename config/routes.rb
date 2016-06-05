Rails.application.routes.draw do

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create", as: 'new_user'

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get'/logout', to: "sessions#destroy"

  resources :students, only: [:new, :create, :show]
  resources :mentors, only: [:new, :create, :show]
  resources :questions do
    resources :ratings, only: [:new, :create]
  end

  root 'welcome#index'

  mount ActionCable.server => '/cable'
end
