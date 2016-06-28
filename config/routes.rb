Kintore::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'front/top#index'
  scope module: :front do
    post 'login' => 'sessions#login', as: :login
    get  'logout' => 'sessions#logout', as: :logout


    resources :menus, only: :index
    resources :users
    resources :sessions
  end
end
