Rails.application.routes.draw do
  get '/index', to: "users#index"

  get '/users/:id', to: "users#show"

  get '/new', to: "users#new"

  get '/users/:id/edit', to: "users#edit"

  get '/users/:id', to: "users#update"

  root 'users#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
