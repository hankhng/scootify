Rails.application.routes.draw do
  root to: 'scooters#index'
  resources :scooters do
    resources :bookings, only: [:create, :new, :index]
    resources :reviews, only: [ :new, :create ]
  end
  resources :bookings, only: [:index, :show]
  devise_for :users

  get 'owned_scooters', to: 'scooters#owned', as: :owned_scooters
  # get 'owned_scooters', to: 'scooters#owned', as: :owned_scooters
  get 'earnings', to: 'bookings#earnings', as: :earnings
   # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

