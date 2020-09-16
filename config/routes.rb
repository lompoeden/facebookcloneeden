Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
    resources :sessions, only: [:new, :create, :destroy]
    resources :feeds do
      collection do
        post :confirm
        patch :confirm
      end
      member do
        patch :confirm
      end
    end
    resources :blogs do
      collection do
        post :confirm
      end
    end
    root to: "users#new"
  end
