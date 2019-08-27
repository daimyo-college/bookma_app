Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:show]
  root 'homes#index'
  resources :lists do
    resources :books
  end
  # get "/users/sign_up", to: "registors#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
