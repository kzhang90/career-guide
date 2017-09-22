Rails.application.routes.draw do
  resources :resumes
  
  root 'welcome#index'
end
