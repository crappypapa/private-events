Rails.application.routes.draw do
  root 'events#index'
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  resources :events
  resources :sessions
  resources :users
  
   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
