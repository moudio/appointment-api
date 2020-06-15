FactoryBot.define do
  factory :user do
    username {Faker::Name.first_name}
    password {'password'}
    password_confirmation {'password'}
  end

end
