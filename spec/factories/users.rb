FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    sequence(:password) { |n| "P@ssw0rd#{n}" }
    sequence(:name) { |n| "User#{n} Name" }
  end
end
