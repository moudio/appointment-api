# frozen_string_literal: true

class Car < ApplicationRecord
  validates :model, presence: true, uniqueness: true
  has_many :books
  has_many :users, through: :books
end
