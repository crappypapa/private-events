Rails.application.routes.draw do
  root 'events#index'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  resources :events
  resources :users
  resources :sessions
   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
