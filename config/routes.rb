Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trees, only: [:show, :index] do
    resources :bookings, only: [:create]
  end

  resource :dashboard, only: [:dashboard]

  namespace :owner do
    resources :trees, only: [:new, :create, :edit, :update, :destroy]
    resource :dashboard, only: [:dashboard]
    resources :bookings do
      member do
        patch :decline, :accept
      end
    end
  end
end
