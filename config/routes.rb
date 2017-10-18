Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :users do
    resources :resumes
    resources :pointers
  end
  
  root 'welcome#index'
end
