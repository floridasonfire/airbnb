Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  root to: "home#index"
  resources :users

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
