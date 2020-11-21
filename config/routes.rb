Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'notifications#index', as: 'home'

  resources :notifications
  # defines routes for notifications/
  # new create edit show update destroy

  namespace :api do
    namespace :v1 do
      resources :notifications, only: [:index, :show, :update]
    end
  end
end