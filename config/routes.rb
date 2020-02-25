Rails.application.routes.draw do
  resources :scooters
  resources :bookings, only: [:index, :create, :show, :new]
  devise_for :users
  # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'scooters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
