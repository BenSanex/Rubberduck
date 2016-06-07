Rails.application.routes.draw do
  default_url_options protocol: :https

  get '/mentors/new', to: "mentors#new"
  get '/students/new', to: "students#new"
  post '/signup', to: "registrations#create", as: 'new_user'

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get'/logout', to: "sessions#destroy"


  get '/student/profile', to: "students#show", as: 'student'

  get '/mentor/profile', to: "mentors#show", as: 'mentor'


  resources :questions, except: [:index, :new, :edit, :destroy] do
    resources :ratings, only: [:new, :create]
  end

  root 'welcome#index'

  mount ActionCable.server => '/cable'
end
