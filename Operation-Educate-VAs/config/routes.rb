Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/info', to: 'welcome#info'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :questionaires
end
