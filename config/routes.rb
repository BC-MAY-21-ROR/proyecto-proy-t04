Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
