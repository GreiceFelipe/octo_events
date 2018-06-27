FactoryBot.define do
  factory :event do
    action Faker::Lorem.word
    association :author
  end
end
