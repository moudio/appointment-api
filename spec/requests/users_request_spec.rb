# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let!(:user) { create(:user) }
  let!(:second_user) { create(:user) }
  let!(:car) { create(:car) }
  let!(:book) { create(:book, car_id: 1, user_id: user.id) }
  let!(:user_id) { user.id }
  let!(:username) { user.username }
  let!(:second_username) { second_user.username }
  let!(:id) { car.id }

  describe "Get user's bookings" do
    before { get "/users/#{username}/books_cars" }

    context 'when user exists and has bookings' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it "returns all user's cars and books" do
        expect(JSON(response.body).size).to eq(2)
      end
    end

    context 'when user does not exist' do
      let(:username) { 'fakeUserxwz' }
      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end
end
