# frozen_string_literal: true

class Book < ApplicationRecord
  validates :date , presence: true
  validates :city , presence: true 
  belongs_to :user
  belongs_to :car
end
