Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :themes, only: [:new, :create, :show] do
    resources :opinions, only: [:new, :create]
    resources :conclusions, only: [:new, :create, :show]
  end
  resources :users, only: [:show, :edit, :update]
end
