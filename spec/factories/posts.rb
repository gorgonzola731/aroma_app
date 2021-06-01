FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters }
    aroma { Faker::Lorem.word }
    content { Faker::Lorem.paragraphs }
    user
  end
end
