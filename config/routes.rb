Rails.application.routes.draw do
  get 'tasks/index'

  mount API => "/"
end
