Rails.application.routes.draw do
  mount API => "/"
  root "tutorial#index"
end
