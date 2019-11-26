Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :skivents do
    resources :bookings, only: [:create]
end
  resources :resorts, only: [:show]
  resources :users, only: [:show, :update]
end
