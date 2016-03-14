FactoryGirl.define do
  factory :student do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end
