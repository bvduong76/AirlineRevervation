Rails.application.routes.draw do
  resources :flights
  resources :airways
  resources :airstrips
  resources :airports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
