FactoryBot.define do
  factory :car do
   model {Faker::Lorem.word} 
   description {Faker::Lorem.paragraph}
   alt {Faker::Lorem.word}
  end
end
