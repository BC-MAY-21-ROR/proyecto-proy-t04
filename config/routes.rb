Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/register'
  resources :students
  get 'home' , to:'pages#index'
  get 'register' , to:'pages#register'
  root "pages#index"
  devise_for :students
  devise_for :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
