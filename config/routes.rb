Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  root to: "home#index"

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :users, :only => [:show, :index, :destroy] do
    resources :properties
  end

  resources :properties, :only => [:show] do
    resources :images
  end

end
