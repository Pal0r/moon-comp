Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :climbers do
    resources :ticks
  end

  root to: 'home#index'
end
