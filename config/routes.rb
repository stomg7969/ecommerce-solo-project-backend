Rails.application.routes.draw do
  # resources :order_details => due to order complexity, customizing the routes for this model.
  resources :order_details, except: [:index, :show]
  get '/order-details', to: 'order_details#index'
  get '/order-details/:id', to: 'order_details#show', as: 'detail'

  resources :products
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#let_user_in'
      post '/add_to_cart', to: 'users#order'
      patch '/add_to_cart/:id', to: 'users#update_order'
      get '/profile', to: 'users#profile'
    end
  end
end
