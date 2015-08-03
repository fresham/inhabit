class API < Grape::API
  prefix "api"
  format :json

  desc "Returns pong"
  get :ping do
    { ping: params[:pong] || "pong" }
  end

  desc "Returns all todos"
  get :todos do
    Todo.all
  end
end
