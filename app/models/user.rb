# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true, length: {minimum: 4, maximum: 15}
  validates :password, presence: true
  has_many :books
  has_many :cars, through: :books
end
