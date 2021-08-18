class ApplicationController < ActionController::Base
    devise_group :user, contains: [:student, :teacher]
end
