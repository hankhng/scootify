Rails.application.routes.draw do
  root to: 'scooters#index', as: 'scooters'
  resources :scooters do
    resources :bookings, only: [:create, :new, :index]
  end
  resources :bookings, only: [:index, :show]
  devise_for :users
  # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
