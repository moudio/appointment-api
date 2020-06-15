FactoryBot.define do
  factory :user do
    Car { "Range Rover" }
    Book { "1" }
    username {"user"}
    password {"password"}
    password_confirmation {"password"}
  end
end
