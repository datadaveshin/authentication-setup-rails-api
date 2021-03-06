Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  get :logged_in, to: "sessions#logged_in"
  delete :logout, to: "sessions#logout"
  root to: "static#home"
end
