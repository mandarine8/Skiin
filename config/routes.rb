Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :skivents do
    resources :bookings, only: [:create]

    member do
      get :book, to: "skivents#book"
    end
  end
  resources :bookings, only: [:edit, :update]
  resources :resorts, only: [:show]

  resources :favorites, only: [:index, :create, :destroy]
    resources :users, only: [:update]

  resources :users, only: [:show] do
    resources :ratings, only: [:create]

    member do
      post :message
    end
  end

end
