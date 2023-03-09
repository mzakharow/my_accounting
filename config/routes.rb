Rails.application.routes.draw do
  devise_for :users
  resources :transfers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'persons/profile', as: 'user_root'

  root 'transfers#index'

end
