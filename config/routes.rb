Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/search', to: 'homes#search' #仮

  devise_for :users

  resources :users, only:[:show]

  resources :lists do
    resources :books
  end

end
