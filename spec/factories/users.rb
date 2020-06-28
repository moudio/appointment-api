FactoryBot.define do
  factory :user do
    username {Faker::Name.middle_name}
    password {'password'}
    password_confirmation {'password'}
  end

end
