Rails.application.routes.draw do
  get 'products/index'
  get 'products/create'
  get 'products/show'
  get 'products/update'
  get 'products/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#let_user_in'
      get '/profile', to: 'users#profile'
    end
  end
end
