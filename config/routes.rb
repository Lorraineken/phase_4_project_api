Rails.application.routes.draw do
  resources :exercise_logs
  resources :exercises
  resources :workouts
  resources :users, only:[:index, :show, :update, :destroy]

  post "/signup", to: 'users#create'

  post"/login", to: 'sessions#create'
  delete'/logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
