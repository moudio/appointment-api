# frozen_string_literal: true

class Car < ApplicationRecord
  validates :model, presence: true, uniqueness: true
  validates :alt, presence: true
  has_many :books, dependent: :destroy
  has_many :users, through: :books
end
