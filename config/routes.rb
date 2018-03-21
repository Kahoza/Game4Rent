Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :owners
  resources :games do
    resources :bookings, only: [ :new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
