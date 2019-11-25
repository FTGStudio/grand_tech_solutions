Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :leads
  resources "contacts", only: [:new, :create]
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  devise_for :users, controllers: { confirmations: 'confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
