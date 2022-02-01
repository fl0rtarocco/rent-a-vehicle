Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'pages#home'
  get '/vehicles/:id/edit', to:"users#edit"
  patch '/vehicles/:id', to:"users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [ :index, :show ]
end
