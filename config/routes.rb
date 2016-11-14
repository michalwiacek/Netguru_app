Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  root to: 'visitors#index'

  resources :teachers do
    get :subjects
  end

  get '/report/subjects', to: 'reports#subjects'
end
