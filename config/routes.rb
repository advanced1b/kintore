Kintore::Application.routes.draw do
  root 'front/top#index'
  scope module: :front do
    resources :menus, only: :index
    resources :users
  end
end
