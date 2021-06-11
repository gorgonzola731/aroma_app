FactoryBot.define do
  factory :tip do
    title { Faker::Lorem.characters }
    article { Faker::Lorem.paragraphs }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, "app/assets/images/bergamot.jpg")) }
  end
end
