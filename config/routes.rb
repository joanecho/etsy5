Rails.application.routes.draw do

  root 'listings#index'

  resources :listings
  resources :shops

end
