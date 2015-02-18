FactoryGirl.define do
  factory :owner do
    sequence(:name) { |n| "Owner#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
  end
end
