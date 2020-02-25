Rails.application.routes.draw do
  get 'fake/page1'
  get 'fake/page2'
  get 'fake/page3'
  get 'fake/page4'
  resources :scooters
  resources :bookings, only: [:index, :create, :show, :new]
  devise_for :users
  # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'scooters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
