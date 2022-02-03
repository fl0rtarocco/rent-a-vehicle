Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles
  get 'profile', to: 'users#show'
  get 'profile/:id', to: 'users#show'
end
