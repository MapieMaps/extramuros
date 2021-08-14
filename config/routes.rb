Rails.application.routes.draw do
  get 'teams/new'
  get 'teams/create'
  get 'teams/index'
  get 'teams/destroy'
  get 'users/index'
  get 'users/show'
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'coworkings/index'
  get 'coworkings/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [ :index, :show ] do
    resources :teams, only: [ :new, :create, :index ]
  end
  resources :coworkings, only: [ :index, :show ] do
    resources :bookings, only: [ :index, :new, :create ]
  end
  resources :bookings, only: [ :destroy ]
  resources :teams, only: [ :destroy ]
end
