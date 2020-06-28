# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'Signing up' do
    context 'craeting a new user' do
      before { post '/api/v1/users', params: { user: { username: 'NewUser', password: 'password' } } }
      it 'returns credentials for created user' do
        expect(JSON(response.body)['status']).to eq('created')
      end
    end
  end
end
