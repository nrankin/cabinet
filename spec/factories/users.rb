FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "jane#{n}@example.com" }
    password { "password" }
  end
end
