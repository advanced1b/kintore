Kintore::Application.routes.draw do

  root 'front/top#index'
  scope module: :front do
    post 'login' => 'sessions#login', as: :login
    get  'logout' => 'sessions#logout', as: :logout


    resources :menus, only: :index
    resources :users
    resources :sessions
  end
end
