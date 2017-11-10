Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :users, shallow: true do
    resources :resumes
    resources :pointers
  end

  resources :field do
    resources :specialty
  end

  root 'welcome#index'
end
