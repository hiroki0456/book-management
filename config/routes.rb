Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:show] do
    member do
      get 'profile-edit', to: "users#profile_edit"
      post 'profile-update', to: "users#profile_update"
    end
  end
end
