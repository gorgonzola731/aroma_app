FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters(number: 1...30) }
    aroma { ["フローラル", "ハーバル", "ウッディ", "シトラス", "和の香り", "スパイシー", "エキゾチック", "その他"].sample }
    content { Faker::Lorem.paragraphs }
    user
  end
end
