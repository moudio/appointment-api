# frozen_string_literal: true

FactoryBot.define do
  factory :car do
    sequence :model do |n|
      "#{Faker::Vehicle.make} #{n}"
    end
    description { Faker::Vehicle.make_and_model }
    alt { Faker::Vehicle.make }
  end
end
