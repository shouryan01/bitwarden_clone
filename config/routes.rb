Rails.application.routes.draw do
  devise_for :users
  resources :logins do
    resources :shares, only: [:new, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homepage#index"
end
