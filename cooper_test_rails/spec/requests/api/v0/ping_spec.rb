require 'rails_helper'

describe Api::V0::Pingcontroller do
  describe 'GET /v0/ping' do
    it 'returns Pong' do
      get '/api/v0/ping'
      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eg 'Pong'
    end
  end
end
