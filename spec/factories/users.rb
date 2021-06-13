FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number: 1...15) }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password }
  end
end
