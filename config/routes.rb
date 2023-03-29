Rails.application.routes.draw do
  resources :exercise_logs
  resources :exercises
  resources :workouts
  resources :users

  post "/login", to: 'sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
