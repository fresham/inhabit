require 'rails_helper'

describe API do
  describe 'GET /api/ping' do
    it 'should respond to a basic ping' do
      get '/api/ping'
      expect(JSON.parse(response.body)).to eq({'ping' => 'pong'})
    end
  end
end
