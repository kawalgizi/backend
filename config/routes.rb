Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :tweets, path: 'admin/tweets'
  # resources :users, path: 'admin/users'
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
