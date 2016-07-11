Kintore::Application.routes.draw do

  root 'front/top#index'
  scope module: :front do
    post 'login' => 'sessions#login', as: :login
    get  'logout' => 'sessions#logout', as: :logout


    resources :menus, only: :index
    resources :users
    resources :sessions
  end

  namespace :admin do
    get 'login' => 'sessions#login', as: :login
    get 'logout' => 'sessions#logout', as: :logout
    

    resources :sessions, only: :create
    resources :users
    resources  :trainings
    resources  :menus
  end
end
