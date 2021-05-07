Rails.application.routes.draw do
  root 'events#index'

  get 'logout', to: 'sessions#destroy'
  resources :events,  only: [:new, :create, :show, :index] do
    member do
      get 'attend'
      get 'cancel_attend'
    end
  end
  resources :users
  resources :sessions , only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
