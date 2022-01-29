Rails.application.routes.draw do
  get '/' to: "vehicles#home"
  get '/vehicles' to: "vehicles#index"
  get '/vehicles/:id' to: "vehicles#show"
  get '/vehicles/:id/bookings/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
