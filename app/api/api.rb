class API < Grape::API
  prefix :api
  format :json

  desc 'Returns pong'
  get :ping do
    { ping: params[:pong] || 'pong' }
  end

  resource :todos do
    version :v1

    desc 'Returns all todo items'
    get do
      present Todo.all, with: Todo::Entity
    end

    desc 'Delete a todo item'
    params do
      requires :id, type: String, desc: 'Todo ID'
    end
    delete ':id' do
      Todo.find(params[:id]).destroy
    end
  end
end
