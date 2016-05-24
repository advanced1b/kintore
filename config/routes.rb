Kintore::Application.routes.draw do
  root 'front/top#index'
  scope module: :front do
  end
end
