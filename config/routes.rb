Rails.application.routes.draw do

  root 'welcome#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :users, shallow: true do
    resources :resumes
    resources :pointers
    resources :inquiries
  end

  resources :fields, shallow: true do
    resources :specialties
  end

end
