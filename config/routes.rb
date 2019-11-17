Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :leads
  resources "contacts", only: [:new, :create]
  devise_for :users, controllers: { confirmations: 'confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
