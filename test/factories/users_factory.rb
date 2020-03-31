FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| "name" }
    sequence(:last_name) { |n| "surname#{n}" }
    sequence(:email) { |n| "#{first_name}#{last_name}@mail.com" }
    sequence(:phone_number, "5491100000000") { |n| n }
    sequence(:password) { "12345678" }
    sequence(:password_confirmation) { "12345678" }
  end
end
