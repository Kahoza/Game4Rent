Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :games do
    resources :events, only: [:new, :create]
  end

  resources :events, only: [:show] do
    resources :bookings, only: [ :new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
