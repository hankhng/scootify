Rails.application.routes.draw do
  get 'fake/page1'
  get 'fake/page2'
  get 'fake/page3'
  get 'fake/page4'
  devise_for :users
  # , :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
