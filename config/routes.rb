Rails.application.routes.draw do
  resources :tickets

  root 'tickets#index'

  get "/signout" => "sessions#destroy", :as => :signout
  get "/signin" => "sessions#new", :as => :signin

  get "/session/create" => "sessions#create"

end
