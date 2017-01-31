Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: {
    registrations: 'admin/registrations',
    sessions: 'admin/sessions'
  }, :path_prefix => 'admin'

  namespace :admin do
    resources :products
    resources :product_categories
    resources :users
  end
end
