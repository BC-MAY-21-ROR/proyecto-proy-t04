Rails.application.routes.draw do

  devise_for :students, controllers: {
    registrations: 'students/registrations'
  }
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations'
  }
  
  get 'pages/index'
  get 'pages/register'
  resources :students
  get 'home' , to:'pages#index'
  get 'register' , to:'pages#register'
  root "pages#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
