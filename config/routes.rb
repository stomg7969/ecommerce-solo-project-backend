Rails.application.routes.draw do
  resources :order_details
  resources :products
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#let_user_in'
      get '/profile', to: 'users#profile'
    end
  end
end
