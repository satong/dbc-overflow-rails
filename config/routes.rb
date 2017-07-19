Rails.application.routes.draw do
  root 'questions#index'

  resources :users, only: [:new, :create, :show]

  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :questions, shallow: true do
    resources :answers
  end

  resources :questions, shallow: true do
    resources :comments
  end

  resources :answers, shallow: true do
    resources :comments
  end




end
