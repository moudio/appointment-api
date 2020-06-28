# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let!(:user) { create(:user) }
  let!(:car) { create(:car) }
  let!(:book) { create(:book, car_id: 1, user_id: user.id) }
  let!(:user_id) { user.id }
  let!(:id) { car.id }

  describe 'Get users' do
    before { get "/users/#{user_id}/books_cars" }

    context 'when car exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all user cars and books' do
        expect(JSON(response.body).size).to eq(2)
      end
    end

    context 'when car does not exist' do
      let(:user_id) { 0 }
      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end
end
