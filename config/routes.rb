Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :reservations, only: [:create, :index, :update, :destroy]
  resources :events, only: [:index, :create, :destroy]
  resources :menu_items, only: [:index, :create, :destroy]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
end
