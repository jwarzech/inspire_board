InspireBoard::Application.routes.draw do
  root :to => 'home#index'
  
  resources :users, :sessions, :pictures
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "register" => "users#new", :as => "register"
end
