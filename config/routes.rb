Rails.application.routes.draw do
  resources :enrollments
  devise_for :users
  get 'welcome/index'

  resources :sections
  resources :courses
  resources :professors
  resources :students
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
