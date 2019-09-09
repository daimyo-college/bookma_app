Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only:[:show]

  resources :lists do
    resources :books do
      resources :comments, only: [:new, :create]
    end
  end

end
