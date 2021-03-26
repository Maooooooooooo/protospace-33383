Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: [:new, :create, :show]
  end
  resources :users, only: [:index, :new, :create, :show]
end
