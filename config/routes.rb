InspireBoard::Application.routes.draw do
  root :to => 'home#index'
  
  resources :users, :sessions
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "new_account" => "users#new", :as => "new_account"
end
