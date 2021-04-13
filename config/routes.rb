Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :themes, only: [:new, :create] do
    resources :opinions, only: [:new, :create]
  end
end
