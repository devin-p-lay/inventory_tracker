FactoryBot.define do
  factory :warehouse do
    location  { Faker::TvShows::GameOfThrones.unique.city }
    id { Faker::Number.unique.within(range: 1..100_000) }
  end
end
