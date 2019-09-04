Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only:[:show]

  resources :lists do
    resources :books do
      collection do
        get :search
      end
    end
  end

end
