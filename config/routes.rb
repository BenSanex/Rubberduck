Rails.application.routes.draw do
  # devise_for :users
 
  devise_for :students, controllers: {
    sessions: 'students/sessions'
  }

  devise_for :mentors, controllers: {
    sessions: 'mentors/sessions'
  }


  resources :mentors, only: [:new, :create, :show]
  resources :students, only: [:new, :create, :show]

  root 'welcome#index'


end
