FactoryBot.define do
  factory :car do
   model {Faker::Vehicle.make} 
   description {Faker::Vehicle.make_and_model}
   alt {Faker::Vehicle.style}
  end
end
