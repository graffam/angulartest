FactoryGirl.define do
  factory :dog do
    sequence(:name) { |n| "Dog#{n}" }
    breed "Lab"

    owner
  end 
end
