FactoryBot.define do
  factory :issue do
    number Faker::Number.number(1)
    title Faker::Lorem.sentence
    github_id Faker::Lorem.characters(5)
  end
end
