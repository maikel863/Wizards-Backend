Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :destroy]
  resources :teachers, only: [:index, :create]
  resoucres :houses, only: [:index, :show, :create]
  resources :ratings, only: [:create, :update]
end
