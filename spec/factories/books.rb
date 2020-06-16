FactoryBot.define do
  factory :book do
    user_id {Faker::Number.between(from = 1, to = 20)}
    car_id {Faker::Number.between(from = 1, to = 20)}
  end
end
