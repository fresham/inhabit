require 'rails_helper'

describe API do
  describe 'GET /api/ping' do
    it 'should respond to a basic ping' do
      get '/api/ping'
      expect(JSON.parse(response.body)).to eq({'ping' => 'pong'})
    end
  end

  describe 'GET /api/v1/todos' do
    let(:todos) { Array.new(3) {|i| double(Todo, name: "Todo #{i}")} }

    before :example do
      allow(Todo).to receive(:all).and_return(todos)
      get '/api/v1/todos'
    end

    it 'should respond' do
      expect(response.status).to eq(200)
    end

    it 'should only expose the name field' do
      expect(JSON.parse(response.body).first.keys).to eq(['name'])
    end

    it 'should return the correct number of todo items' do
      expect(JSON.parse(response.body).count).to eq(3)
    end
  end

  describe 'DELETE /api/v1/todos/:id' do
    let(:todo) { double(Todo, id: 1) }

    before :example do
      allow(Todo).to receive(:find).with(todo.id.to_s).and_return(todo)
      allow(todo).to receive(:destroy)
    end

    it 'should respond with a 200' do
      delete "/api/v1/todos/#{todo.id}"
      expect(response.status).to eq(200)
    end
    
    it 'should delete the todo item' do
      expect(todo).to receive(:destroy)
      delete "/api/v1/todos/#{todo.id}"
    end
  end
end
