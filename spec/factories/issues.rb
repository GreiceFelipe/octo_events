FactoryBot.define do
  factory :issue do
    number Faker::Number.number(10)
    title Faker::Lorem.sentence
    github_id Faker::Lorem.characters(15)
  end
end
