InspireBoard::Application.routes.draw do
  root :to => 'home#index'
  
  resources :users, :sessions, :pictures, :dribbble_shots
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "register" => "users#new", :as => "register"
end