Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:show, :update] do
    resources :reviews, only: [:new, :create]
    member do
      put :accept
      put :reject
    end
  end
  get 'profile', to: 'users#show'
  get 'profile/:id', to: 'users#show'
end
