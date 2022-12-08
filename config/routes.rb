Rails.application.routes.draw do
  devise_for :users

  resources :products, only: %i[index show]

  root to: 'root#index'
end
