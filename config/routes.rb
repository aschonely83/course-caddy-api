Rails.application.routes.draw do
  resources :rounds
  resources :courses, except: [:update, :destroy]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
