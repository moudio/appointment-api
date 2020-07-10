# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  let!(:user) { create(:user) }
  let!(:car) { create(:car) }
  let!(:book) { create(:book, user_id: 1, car_id: 1, city: 'Paris', date: '2020-20-12') }

  context 'Tests the book is valid' do
    it 'tests the user is valid with city and date' do
      expect(book).to be_valid
    end

    it 'tests the city should be present' do
      book.city = ''
      expect(book).not_to be_valid
    end

    it 'test the date should be present' do
      book.date = ''
      expect(book).not_to be_valid
    end
  end
end
