# frozen_string_literal: true

class Car < ApplicationRecord
  has_many :books
  has_many :users, through: :books
end
