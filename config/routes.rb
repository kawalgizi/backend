Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  namespace :admin do
    resources :users
  end
end
