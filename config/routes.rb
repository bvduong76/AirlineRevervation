Rails.application.routes.draw do
  devise_for :users
  resources :pricelevels
  resources :passengers
  resources :flightdetails
  resources :bookings
  resources :flights
  resources :airways
  resources :airstrips
  resources :airports
  root 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
