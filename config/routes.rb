Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get '/route', to: 'controller#method'
  post '/route', to: 'controller#method'
 
 root to: 'store#index'

  resources :orders
  resources :line_items
  resources :carts
  resources :stores
  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
