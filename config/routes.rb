Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile' => 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [ :index, :profile, :show ] do
    resources :teams, only: [ :new, :create, :index ]
  end
  resources :coworkings, only: [ :index, :show ] do
    resources :bookings, only: [ :index, :new, :create ]
  end
  resources :bookings, only: [ :destroy ]
  resources :teams, only: [ :destroy ]
end
