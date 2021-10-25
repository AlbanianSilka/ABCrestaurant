Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :boards do
    resources :bookings, shallow: true
  end

  resources :dishes

  get 'about', to: "about#index"
  get 'welcome/index'
  root 'welcome#index'
end
