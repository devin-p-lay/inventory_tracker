FactoryBot.define do
  factory :item do
    association :warehouse
    name { Faker::Commerce.product_name }
    description { Faker::ChuckNorris.fact }
    id { Faker::Number.unique.within(range: 1..1_000_000) }
  end
end
