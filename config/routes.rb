Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root to: 'pages#index'
  resources :articles do
  end
    get "/categories/:id", to: "articles#categories", as: "categories" 	
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
