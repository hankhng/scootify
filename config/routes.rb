Rails.application.routes.draw do
  root to: 'scooters#index'
  resources :scooters do
    resources :bookings, only: [:index, :create, :show, :new]
  end
  devise_for :users
  # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
