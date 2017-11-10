Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :users, shallow: true do
    resources :resumes
    resources :pointers
  end

  resources :fields do
    resources :specialties
  end

  root 'welcome#index'
end
