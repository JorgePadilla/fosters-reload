Rails.application.routes.draw do
 

<<<<<<< HEAD
 
=======
 # get 'contactus/index'

 # get 'rooms/index'
>>>>>>> 51c94db17a96d4c552ff039b9a4d6be0b59bd212

  resources :users
  resources :sessions
  resources :rooms
  resources :contactus

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: "home#index"

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

end
