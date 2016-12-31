Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  namespace :admin do
    resources :product_categories
    resources :users
  end
end
