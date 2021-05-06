Rails.application.routes.draw do
  root 'events#index'
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  resources :events do
    member do
      get 'attend'
      get 'cancel_attend'
    end
  end
  resources :users
  resources :sessions , only: [:new, :create, :destroy]
 
  
   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
