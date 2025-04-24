FactoryBot.define do
  factory :task do
    user
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    due_date { Date.today.advance(days: 10) }
    status { 1 }
  end
end
