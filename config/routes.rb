Rails.application.routes.draw do
  resources :line_items

  resources :carts

  get 'store/index'

  resources :products

  root 'store#index', as: 'store'

  devise_for :users, path: "auth", path_names: {sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification',
    unlock: 'unblock', registration: 'register'}
end
