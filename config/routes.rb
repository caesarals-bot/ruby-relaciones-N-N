Rails.application.routes.draw do
  resources :cats
  resources :publications
  resources :comments, only: [:create]

  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  post '/new_user_reaction', to: 'reactions#new_user_reaction', as:
  'new_user_reaction'

end
