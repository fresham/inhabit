Rails.application.routes.draw do
  root to: 'tasks#index'

  mount API => "/"
end
