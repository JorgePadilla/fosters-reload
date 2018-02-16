Rails.application.routes.draw do
 

 
 # get 'contactus/index'

 # get 'rooms/index'

  resources :users
  resources :sessions
  resources :rooms do
      resources :onelists
  end
  resources :contactus

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: "home#index"

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

end
