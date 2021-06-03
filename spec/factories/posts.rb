FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters(max_length: 30) } 
    aroma { Faker::Lorem.word }
    content { Faker::Lorem.paragraphs }
    user
  end
end
