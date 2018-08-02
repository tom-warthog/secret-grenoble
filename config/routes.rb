Rails.application.routes.draw do
  root to:'static_pages#home'
  get '/secret', to: 'static_pages#secret', as: 'secret'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as:'logout'
end
