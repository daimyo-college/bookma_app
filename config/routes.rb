Rails.application.routes.draw do
  get 'homes/index'
  resources :books
  resources :lists
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
